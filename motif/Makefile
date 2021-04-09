# $NetBSD$

DISTNAME=	motif-2.3.7
PKGREVISION=	2
CATEGORIES=	x11
MASTER_SITES=	http://download.sourceforge.net/motif/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://motif.ics.com/
COMMENT=	ICS Motif widget toolkit
LICENSE=	gnu-lgpl-v2.1

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	autoconf perl pkg-config

pre-configure:
	cd ${WRKSRC} && autoconf
	ln -s /opt/X11/include/X11 ${BUILDLINK_DIR}/include/X11
	for x in ${X_LIBS}; do \
		ln -s /opt/X11/lib/$$x ${BUILDLINK_DIR}/lib/$$x; \
	done

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--disable-static
CONFIGURE_ARGS+=	--disable-themes
CONFIGURE_ARGS+=	--disable-debug-themes
CONFIGURE_ARGS+=	--disable-themes
CONFIGURE_ARGS+=	--disable-jpeg
CONFIGURE_ARGS+=	--disable-png
CONFIGURE_ARGS+=	--enable-xft
CONFIGURE_ARGS+=	--enable-utf8

CONFIGURE_ARGS+=	--with-x

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
CONFIGURE_ARGS+=	--x-includes=/opt/X11/include
CONFIGURE_ARGS+=	--x-libraries=/opt/X11/lib
X_LIBS=	libX11.dylib \
	libXext.dylib \
	libXft.dylib \
	libXmu.dylib \
	libXp.dylib \
	libXrender.dylib \
	libXt.dylib
.endif

MAKE_ENV+=		DYLD_FALLBACK_LIBRARY_PATH=${BUILDLINK_DIR}/lib

.include "../../eliteraspberries/freetype2/buildlink3.mk"
.include "../../eliteraspberries/fontconfig/buildlink3.mk"
.include "../../eliteraspberries/libpng/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
