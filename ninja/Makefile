# $NetBSD$

DISTNAME=	v1.10.0
PKGNAME=	ninja-${DISTNAME:S/v//}
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=ninja-build/ninja/archive/}
DIST_SUBDIR=	ninja

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://ninja-build.org/
COMMENT=	Ninja, a small build system with a focus on speed
LICENSE=	apache-2.0

WRKSRC=		${WRKDIR}/ninja-${DISTNAME:S/v//}
USE_LANGUAGES=	c c++

INSTALLATION_DIRS+=	bin

do-build:
	cd ${WRKSRC} && env ${MAKE_ENV} ./configure.py --bootstrap

do-install:
	cd ${WRKSRC} && ${INSTALL_PROGRAM} ninja ${DESTDIR}${PREFIX}/bin/ninja

BUILDLINK_DEPMETHOD.python=build
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
