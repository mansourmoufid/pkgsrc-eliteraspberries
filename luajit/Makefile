# $NetBSD$

DISTNAME=	LuaJIT-v2.1
PKGREVISION=	2
PKGNAME=	${DISTNAME:tl:S/-v/-/}.0
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GITHUB:=LuaJIT/}
GITHUB_TAG=	1d7b5029c5ba36870d25c67524034d452b761d27

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://luajit.org/
COMMENT=	Lua Just-In-Time Compiler
LICENSE=	mit

USE_LANGUAGES=	c
USE_TOOLS+=	gmake pkg-config

PKGCONFIG_OVERRIDE+=	etc/luajit.pc

BUILD_MAKE_FLAGS+=	PREFIX=${PREFIX}
INSTALL_MAKE_FLAGS+=	PREFIX=${PREFIX}
INSTALL_MAKE_FLAGS+=	DESTDIR=${DESTDIR}
INSTALL_MAKE_FLAGS+=	INSTALL_MAN=${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"
