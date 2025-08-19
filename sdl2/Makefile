# $NetBSD$

DISTNAME=	sdl2-2.30.11
CATEGORIES=	devel multimedia
DISTFILES=	${DISTNAME:tu}.tar.gz
MASTER_SITES=	https://www.libsdl.org/release/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://www.libsdl.org/
COMMENT=	Simple DirectMedia Layer library
LICENSE=	zlib

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
#USE_TOOLS+=	autoconf automake autoreconf gmake perl pkg-config
USE_TOOLS+=	gmake pkg-config
USE_LANGUAGES=	c

PKGCONFIG_OVERRIDE+=	sdl2.pc.in

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--disable-static
CONFIGURE_ARGS+=	--with-pic

CONFIGURE_ARGS+=	--enable-audio
CONFIGURE_ARGS+=	--enable-events
CONFIGURE_ARGS+=	--enable-pthreads
CONFIGURE_ARGS+=	--enable-render
CONFIGURE_ARGS+=	--enable-video
CONFIGURE_ARGS+=	--disable-video-x11

.include "../../mk/bsd.prefs.mk"

.if ${MACHINE_ARCH} == "x86_64"
CONFIGURE_ARGS+=	--enable-assembly
CONFIGURE_ARGS+=	--enable-sse2
CONFIGURE_ARGS+=	--enable-ssemath
.endif

.if ${OPSYS} == "Darwin"
CONFIGURE_ARGS+=	--enable-video-cocoa
CONFIGURE_ARGS+=	--enable-video-metal
CONFIGURE_ARGS+=	--enable-render-metal
.else
CONFIGURE_ARGS+=	--enable-video-vulkan
CONFIGURE_ARGS+=	--enable-video-x11
CONFIGURE_ARGS+=	--enable-video-wayland
.endif

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
