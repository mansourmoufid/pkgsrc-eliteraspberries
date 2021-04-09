# $NetBSD$

DISTNAME=	alpha4.1
PKGNAME=	libui-${DISTNAME:S/alpha//}
CATEGORIES=	devel graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=andlabs/libui/archive/}
DIST_SUBDIR=	libui

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=andlabs/libui/}
COMMENT=	Simple and portable (but not inflexible) GUI library
LICENSE=	mit

WRKSRC=		${WRKDIR}/libui-${DISTNAME}

USE_LANGUAGES+=	c c++

USE_TOOLS+=	pkg-config

INSTALLATION_DIRS=	include lib

post-install:
	${INSTALL_DATA} ${WRKSRC}/ui.h ${DESTDIR}${PREFIX}/include
	${INSTALL_LIB} ${WRKSRC}/${CMAKE_DIR}/out/libui*.* ${DESTDIR}${PREFIX}/lib

.include "../../eliteraspberries/cmake/buildlink3.mk"
.include "../../eliteraspberries/cmake/cmake.mk"
.include "../../mk/bsd.pkg.mk"
