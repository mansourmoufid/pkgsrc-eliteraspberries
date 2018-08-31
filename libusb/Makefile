# $NetBSD$

DISTNAME=	libusb-1.0.22
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=libusb/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://libusb.info/
COMMENT=	Cross-platform user library to access USB devices
LICENSE=	gnu-lgpl-v2.1

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	autoconf automake autoreconf perl pkg-config
USE_LANGUAGES=	c

PKGCONFIG_OVERRIDE+=	libusb-1.0.pc.in

pre-configure:
	cd ${WRKSRC}; autoreconf -i

CONFIGURE_ARGS+=	--includedir=${PREFIX}/include
CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--with-pic

do-install:
	mkdir -p ${DESTDIR}${PREFIX}/lib/
	mkdir -p ${DESTDIR}${PREFIX}/lib/pkgconfig
	mkdir -p ${DESTDIR}${PREFIX}/include/libusb-1.0
	for f in ${WRKSRC}/libusb/.libs/libusb-1.0*.{so,dylib}; do \
		${INSTALL_LIB} $$f ${DESTDIR}${PREFIX}/lib/; \
	done
	${INSTALL_DATA} ${WRKSRC}/libusb-1.0.pc \
		${DESTDIR}${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKSRC}/libusb/libusb.h \
		${DESTDIR}${PREFIX}/include/libusb-1.0

.include "../../mk/bsd.pkg.mk"
