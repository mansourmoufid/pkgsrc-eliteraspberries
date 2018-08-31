# $NetBSD$

DISTNAME=	librtlsdr-0.6.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=steve-m/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://osmocom.org/projects/rtl-sdr
COMMENT=	Software project for [ab]using DVB-T USB receivers
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	autoconf automake autoreconf perl pkg-config
USE_LANGUAGES=	c

PKGCONFIG_OVERRIDE+=	librtlsdr.pc.in

pre-configure:
	cd ${WRKSRC}; autoreconf -i

CONFIGURE_ARGS+=	--includedir=${PREFIX}/include
CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--with-pic

do-install:
	mkdir -p ${DESTDIR}${PREFIX}/lib/
	mkdir -p ${DESTDIR}${PREFIX}/lib/pkgconfig
	mkdir -p ${DESTDIR}${PREFIX}/include
	for f in ${WRKSRC}/src/.libs/librtlsdr*.{so,dylib}; do \
		${INSTALL_LIB} $$f ${DESTDIR}${PREFIX}/lib/; \
	done
	${INSTALL_DATA} ${WRKSRC}/librtlsdr.pc \
		${DESTDIR}${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKSRC}/include/rtl-sdr.h \
		${DESTDIR}${PREFIX}/include/
	${INSTALL_DATA} ${WRKSRC}/include/rtl-sdr_export.h \
		${DESTDIR}${PREFIX}/include/

.include "../../eliteraspberries/libusb/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
