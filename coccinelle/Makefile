# $NetBSD$

DISTNAME=	coccinelle-1.0.4
PKGREVISION=	4
CATEGORIES=	devel
MASTER_SITES=	http://coccinelle.lip6.fr/distrib/
EXTRACT_SUFX=	.tgz

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://coccinelle.lip6.fr/
COMMENT=	Program matching and transformation engine for C
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake

CONFIGURE_ARGS+=	--enable-release

CONFIGURE_ARGS+=	--with-ocamlfind=${PREFIX}/bin/ocamlfind
CONFIGURE_ARGS+=	--with-menhir=${PREFIX}/bin/menhir

CONFIGURE_ARGS+=	--disable-python
CONFIGURE_ARGS+=	--disable-pycaml
CONFIGURE_ARGS+=	--without-pdflatex

.include "options.mk"

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../eliteraspberries/camlp4/buildlink3.mk"
.include "../../eliteraspberries/menhir/buildlink3.mk"
.include "../../eliteraspberries/parmap/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
