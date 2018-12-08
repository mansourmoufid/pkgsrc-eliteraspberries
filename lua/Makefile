# $NetBSD$

.include "../../eliteraspberries/lua/Makefile.version"

DISTNAME=	lua-${LUA_VERSION}
PKGREVISION=	3
CATEGORIES=	lang
MASTER_SITES=	https://www.lua.org/ftp/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://www.lua.org/
COMMENT=	Lua programming language
LICENSE=	mit

USE_LANGUAGES=	c

CPPFLAGS+=		-DLUA_ROOT=${PREFIX}
CPPFLAGS+=		-DLUA_USE_POSIX
CPPFLAGS+=		-DLUA_USE_DLOPEN

LDFLAGS+=		-ldl -lreadline

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
CPPFLAGS+=		-DLUA_USE_MACOSX
.endif

BUILD_MAKE_FLAGS+=	PLAT="generic"
BUILD_MAKE_FLAGS+=	INSTALL_TOP=${PREFIX}
INSTALL_MAKE_FLAGS+=	INSTALL_TOP=${DESTDIR}${PREFIX}

.include "../../eliteraspberries/lua/Makefile.common"

.include "../../eliteraspberries/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
