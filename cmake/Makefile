# $NetBSD$

CMAKE_MAJOR_VERSION=	3
CMAKE_MINOR_VERSION=	15
CMAKE_PATCH_VERSION=	7
CMAKE_BASEVER=		${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}
CMAKE_VERSION=		${CMAKE_BASEVER}.${CMAKE_PATCH_VERSION}

DISTNAME=	cmake-${CMAKE_VERSION}
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	https://cmake.org/files/v${CMAKE_BASEVER}/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://cmake.org/
COMMENT=	CMake cross-platform build system
LICENSE=	original-bsd

HAS_CONFIGURE=		yes
CONFIGURE_SCRIPT=	bootstrap
USE_LANGUAGES=		c c++

post-extract:
.for d in cmcurl cmexpat cmjsoncpp cmlibarchive cmlibrhash cmzlib
	cd ${WRKSRC} && rm -rf Utilities/${d}
.endfor

post-patch:
	find ${WRKSRC} -name '*.orig' | while read f; do rm -f "$$f"; done

CONFIGURE_ARGS+=	--datadir=share/cmake-${CMAKE_VERSION}
CONFIGURE_ARGS+=	--docdir=share/doc/cmake-${CMAKE_VERSION}
CONFIGURE_ARGS+=	--mandir=${PKGMANDIR}
CONFIGURE_ARGS+=	--prefix=${PREFIX}

CONFIGURE_ARGS+=	--system-libs

CONFIGURE_ENV+=		CMAKE_OPTIONS="-DCMAKE_PREFIX_PATH=${PREFIX}"

post-configure:
.for d in cmlibuv
	cd ${WRKSRC} && rm -rf Utilities/${d}
.endfor

MAKE_ENV+=			DYLD_FALLBACK_LIBRARY_PATH=${BUILDLINK_DIR}/lib

PLIST_SUBST+=		CMAKE_BASEVER=${CMAKE_BASEVER}
PLIST_SUBST+=		CMAKE_VERSION=${CMAKE_VERSION}

LDFLAGS.Darwin+=	-w

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/curl/buildlink3.mk"
.include "../../eliteraspberries/jsoncpp/buildlink3.mk"
.include "../../eliteraspberries/libarchive/buildlink3.mk"
.include "../../eliteraspberries/libuv/buildlink3.mk"
.include "../../eliteraspberries/rhash/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
