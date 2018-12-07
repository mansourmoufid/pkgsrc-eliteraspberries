# $NetBSD$

.include "../../eliteraspberries/lua/Makefile.version"

DISTNAME=	lua-${LUA_VERSION}
PKGREVISION=	2
CATEGORIES=	lang
MASTER_SITES=	https://www.lua.org/ftp/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://www.lua.org/
COMMENT=	Lua programming language
LICENSE=	mit

USE_LANGUAGES=	c

.include "../../mk/bsd.prefs.mk"

CPPFLAGS+=		-DLUA_ROOT=${PREFIX}

BUILD_MAKE_FLAGS+=	PLAT="generic"
BUILD_MAKE_FLAGS+=	SYSCFLAGS="-DLUA_USE_POSIX -DLUA_USE_DLOPEN"
BUILD_MAKE_FLAGS+=	SYSLIBS="-ldl"
BUILD_MAKE_FLAGS+=	INSTALL_TOP=${PREFIX}
INSTALL_MAKE_FLAGS+=	INSTALL_TOP=${DESTDIR}${PREFIX}

.include "../../eliteraspberries/lua/Makefile.common"

.include "../../mk/bsd.pkg.mk"
