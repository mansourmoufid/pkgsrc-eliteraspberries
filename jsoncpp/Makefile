# $NetBSD$

DISTNAME=	1.9.6
PKGNAME=	jsoncpp-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=open-source-parsers/jsoncpp/archive/}
DIST_SUBDIR=	jsoncpp

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=open-source-parsers/jsoncpp/}
COMMENT=	C++ library for interacting with JSON
LICENSE=	mit

WRKSRC=		${WRKDIR}/jsoncpp-${DISTNAME}

USE_LANGUAGES+=	c c++

.include "../../eliteraspberries/meson/buildlink3.mk"
.include "../../eliteraspberries/meson/meson-ninja.mk"
.include "../../eliteraspberries/ninja/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
