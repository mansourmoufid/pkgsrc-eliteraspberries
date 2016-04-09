# $NetBSD$

CMAKE_MAJOR_VERSION=	3
CMAKE_MINOR_VERSION=	5
CMAKE_PATCH_VERSION=	1
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
CONFIGURE_ARGS+=	--datadir=share/${PKGNAME}
CONFIGURE_ARGS+=	--docdir=share/doc/${PKGNAME}
CONFIGURE_ARGS+=	--mandir=${PKGMANDIR}

CONFIGURE_ARGS+=	--system-libs
CONFIGURE_ARGS+=	--no-system-jsoncpp

PLIST_SUBST+=		CMAKE_BASEVER=${CMAKE_BASEVER}

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/curl/buildlink3.mk"
.include "../../eliteraspberries/libarchive/buildlink3.mk"
.include "../../eliteraspberries/ncurses/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
