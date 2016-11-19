# $NetBSD$

CMAKE_MAJOR_VERSION=	3
CMAKE_MINOR_VERSION=	7
CMAKE_PATCH_VERSION=	0
CMAKE_BASEVER=		${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}
CMAKE_VERSION=		${CMAKE_BASEVER}.${CMAKE_PATCH_VERSION}

DISTNAME=	cmake-${CMAKE_VERSION}
CATEGORIES=	devel
MASTER_SITES=	https://cmake.org/files/v${CMAKE_BASEVER}/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://cmake.org/
COMMENT=	CMake cross-platform build system
LICENSE=	original-bsd

HAS_CONFIGURE=		yes
CONFIGURE_SCRIPT=	bootstrap
USE_LANGUAGES=		c c++

CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--datadir=share/cmake-${CMAKE_VERSION}
CONFIGURE_ARGS+=	--docdir=share/doc/cmake-${CMAKE_VERSION}
CONFIGURE_ARGS+=	--mandir=${PKGMANDIR}

CONFIGURE_ARGS+=	--system-libs
CONFIGURE_ARGS+=	--no-system-jsoncpp

PLIST_SUBST+=		CMAKE_BASEVER=${CMAKE_BASEVER}
PLIST_SUBST+=		CMAKE_VERSION=${CMAKE_VERSION}

post-extract:
	rm -rf ${WRKSRC}/Utilities/cmbzip2
	rm -rf ${WRKSRC}/Utilities/cmcurl
	rm -rf ${WRKSRC}/Utilities/cmexpat
	rm -rf ${WRKSRC}/Utilities/cmlibarchive
	rm -rf ${WRKSRC}/Utilities/cmliblzma
	rm -rf ${WRKSRC}/Utilities/cmzlib

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/curl/buildlink3.mk"
.include "../../eliteraspberries/libarchive/buildlink3.mk"
.include "../../eliteraspberries/ncurses/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
