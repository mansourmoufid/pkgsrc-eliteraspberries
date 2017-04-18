# $NetBSD$

DISTNAME=	ncurses-6.0
PKGREVISION=	4
CATEGORIES=	devel
MASTER_SITES=	http://invisible-mirror.net/archives/ncurses/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://invisible-island.net/ncurses/
COMMENT=	Character-cell terminal management library
LICENSE=	mit

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++

USE_TOOLS+=	gmake

CONFIGURE_ARGS+=	--without-libtool
CONFIGURE_ARGS+=	--without-shared
CONFIGURE_ARGS+=	--without-debug
CONFIGURE_ARGS+=	--without-profile
CONFIGURE_ARGS+=	--enable-rpath
CONFIGURE_ARGS+=	--enable-sp-funcs
CONFIGURE_ARGS+=	--disable-relink
CONFIGURE_ARGS+=	--disable-rpath-hack
CONFIGURE_ARGS+=	--without-manpages

.include "../../mk/bsd.pkg.mk"
