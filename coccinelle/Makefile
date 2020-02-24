# $NetBSD$

DISTNAME=	coccinelle-1.0.7
CATEGORIES=	devel
MASTER_SITES=	http://coccinelle.lip6.fr/distrib/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://coccinelle.lip6.fr/
COMMENT=	Program matching and transformation engine for C
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	autoconf gmake perl

SPATCH=		no

post-extract:
	sed -e 's/$${SPATCH}/spatch.opt/' < files/spatch.sh > ${WRKSRC}/spatch.sh

pre-configure:
	cd ${WRKSRC} && sh autogen

CONFIGURE_ARGS+=	--with-ocamlfind=${PREFIX}/bin/ocamlfind
CONFIGURE_ARGS+=	--with-menhir=${PREFIX}/bin/menhir

CONFIGURE_ARGS+=	--without-pdflatex

MAKE_ENV+=		OCAMLCFLAGS="-cc ${CC} -ccopt '-fpic'"
MAKE_ARGS+=		opt

.include "options.mk"

BUILDLINK_DEPMETHOD.camlp4=	build
BUILDLINK_DEPMETHOD.menhir=	build
.include "../../eliteraspberries/ocaml-camlp4/buildlink3.mk"
.include "../../eliteraspberries/ocaml-menhir/buildlink3.mk"
.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../eliteraspberries/parmap/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
