# $NetBSD$

DISTNAME=	1.0.8
PKGNAME=	coccinelle-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=coccinelle/coccinelle/archive/}
DIST_SUBDIR=	coccinelle

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://coccinelle.lip6.fr/
COMMENT=	Program matching and transformation engine for C
LICENSE=	gnu-gpl-v2

WRKSRC=		${WRKDIR}/coccinelle-${DISTNAME}

GNU_CONFIGURE=	yes
USE_TOOLS+=	autoconf automake autoreconf gmake perl pkg-config

post-extract:
	sed -e 's/$${SPATCH}/spatch.opt/' < files/spatch.sh > ${WRKSRC}/spatch.sh
	cp files/no_pycocci.mli ${WRKSRC}/python/
.for d in menhirLib parmap pcre stdcompat
	cd ${WRKSRC} && rm -rf bundles/${d}/*
.endfor

pre-configure:
	cd ${WRKSRC} && autoreconf -i

CONFIGURE_ARGS+=	--disable-byte
CONFIGURE_ARGS+=	--enable-opt
CONFIGURE_ARGS+=	--enable-pcre
CONFIGURE_ARGS+=	--enable-pcre-syntax

.include "options.mk"

BUILD_TARGET=		opt

BUILDLINK_DEPMETHOD.camlp4=	build
BUILDLINK_DEPMETHOD.menhir=	build
.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-camlp4/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../eliteraspberries/ocaml-menhir/buildlink3.mk"
.include "../../eliteraspberries/ocaml-parmap/buildlink3.mk"
.include "../../eliteraspberries/ocaml-pcre/buildlink3.mk"
.include "../../eliteraspberries/ocaml-stdcompat/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
