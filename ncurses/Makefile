# $NetBSD$

DISTNAME=	ncurses-6.3
CATEGORIES=	devel
MASTER_SITES=	http://invisible-mirror.net/archives/ncurses/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://invisible-island.net/ncurses/
COMMENT=	Character-cell terminal management library
LICENSE=	mit

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++

USE_TOOLS+=	gmake

CONFIGURE_ARGS+=	--disable-relink
CONFIGURE_ARGS+=	--disable-rpath-hack
CONFIGURE_ARGS+=	--enable-rpath
CONFIGURE_ARGS+=	--enable-sp-funcs
CONFIGURE_ARGS+=	--enable-widec
CONFIGURE_ARGS+=	--without-debug
CONFIGURE_ARGS+=	--without-libtool
CONFIGURE_ARGS+=	--without-manpages
CONFIGURE_ARGS+=	--without-profile
CONFIGURE_ARGS+=	--with-shared

.include "../../mk/bsd.prefs.mk"

post-install:
	cd ${DESTDIR}/${PREFIX}/include && ln -F -f -s ncursesw ncurses
.if ${OPSYS} == "Darwin"
	cd ${DESTDIR}/${PREFIX}/lib && ln -f -s libformw.dylib libform.dylib
	cd ${DESTDIR}/${PREFIX}/lib && ln -f -s libmenuw.dylib libmenu.dylib
	cd ${DESTDIR}/${PREFIX}/lib && ln -f -s libncursesw.dylib libncurses.dylib
	cd ${DESTDIR}/${PREFIX}/lib && ln -f -s libpanelw.dylib libpanel.dylib
.else
	cd ${DESTDIR}/${PREFIX}/lib && ln -f -s libformw.so libform.so
	cd ${DESTDIR}/${PREFIX}/lib && ln -f -s libmenuw.so libmenu.so
	cd ${DESTDIR}/${PREFIX}/lib && ln -f -s libncursesw.so libncurses.so
	cd ${DESTDIR}/${PREFIX}/lib && ln -f -s libpanelw.so libpanel.so
.endif

.include "../../mk/bsd.pkg.mk"
