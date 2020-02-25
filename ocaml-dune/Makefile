# $NetBSD$

DISTNAME=	2.3.1
PKGNAME=	ocaml-dune-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=ocaml/dune/archive/}
DIST_SUBDIR=	ocaml-dune

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://dune.build/
COMMENT=	Composable build system for OCaml
LICENSE=	mit

USE_LANGUAGES=	c

USE_TOOLS+=	gmake

WRKSRC=		${WRKDIR}/dune-${DISTNAME}

CONFIGURE_ARGS+=	--libdir ${PREFIX}/lib/ocaml/site-lib
CONFIGURE_ARGS+=	--mandir ${PKGMANDIR}

BUILD_TARGET=	dev

do-install:
	cd ${WRKSRC} && env ${MAKE_ENV} DESTDIR=${DESTDIR} \
		./dune.exe install dune dune-configurator dune-private-libs
	cd ${DESTDIR}${PREFIX} && \
		mkdir -p share && rm -rf share/doc && mv doc share/

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
