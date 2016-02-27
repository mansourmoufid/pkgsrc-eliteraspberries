# $NetBSD$

PA_VERSION=	v19_20140130

DISTNAME=	pa_stable_${PA_VERSION}
PKGNAME=	portaudio-${PA_VERSION}
CATEGORIES=	audio
MASTER_SITES=	http://www.portaudio.com/archives/
EXTRACT_SUFX=	.tgz

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://www.portaudio.com/
COMMENT=	Cross-platform audio I/O library
LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}/portaudio
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	autoconf gmake pkg-config
USE_LANGUAGES=	c

PKGCONFIG_OVERRIDE+=	portaudio-2.0.pc.in

pre-configure:
	cd ${WRKSRC} && autoconf

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--disable-static
CONFIGURE_ARGS+=	--with-pic
CONFIGURE_ARGS+=	--disable-cxx
CONFIGURE_ARGS+=	--disable-debug-output

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
CONFIGURE_ARGS+=	--disable-mac-debug
CONFIGURE_ARGS+=	--disable-mac-universal
.endif

.include "../../mk/bsd.pkg.mk"
