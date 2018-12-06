# $NetBSD$

DISTNAME=	luarocks-3.0.4
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	http://luarocks.github.io/luarocks/releases/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://luarocks.org/
COMMENT=	Package manager for Lua modules
LICENSE=	mit

USE_LANGUAGES=	c
USE_TOOLS+=	gmake unzip

do-configure:
	cd ${WRKSRC} && \
	sh configure --prefix=${PREFIX} \
		--sysconfdir=${PKG_SYSCONFDIR} \
		--with-lua=${PREFIX} \
		--with-lua-interpreter=lua

.include "../../eliteraspberries/lua/Makefile.common"

post-install:
	mkdir -p ${PKG_SYSCONFDIR}/luarocks

CONF_FILES=	${PREFIX}/share/examples/luarocks/config-$(LUA_BASEVER).lua \
		${PKG_SYSCONFDIR}/luarocks/config-$(LUA_BASEVER).lua

.include "../../eliteraspberries/lua/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
