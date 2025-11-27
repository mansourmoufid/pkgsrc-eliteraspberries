# $NetBSD$

DISTNAME=	mbedtls-3.6.4
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_GITHUB:=Mbed-TLS/}
EXTRACT_SUFX=	.tar.bz2
GITHUB_RELEASE=	${DISTNAME}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://tls.mbed.org/
COMMENT=	mbed TLS library
LICENSE=	apache-2.0

USE_LANGUAGES=	c
USE_TOOLS+=	gmake

MAKE_ENV+=	SHARED=1

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
MAKE_ENV+=	DLEXT=dylib
.endif

BUILD_TARGET=	lib

post-extract:
	touch ${WRKSRC}/library/psa_crypto_driver_wrappers.h
	touch ${WRKSRC}/library/psa_crypto_driver_wrappers_no_static.c

do-install:
	mkdir -p ${DESTDIR}${PREFIX}/include/mbedtls
	mkdir -p ${DESTDIR}${PREFIX}/include/psa
	for h in ${WRKSRC}/include/mbedtls/*; do \
		${INSTALL_DATA} $$h ${DESTDIR}${PREFIX}/include/mbedtls; \
	done
	for h in ${WRKSRC}/include/psa/*; do \
		${INSTALL_DATA} $$h ${DESTDIR}${PREFIX}/include/psa; \
	done
	mkdir -p ${DESTDIR}${PREFIX}/lib
	for l in ${WRKSRC}/library/lib*.*; do \
		${INSTALL_LIB} $$l ${DESTDIR}${PREFIX}/lib; \
	done
.if ${OPSYS} == "Darwin"
	install_name_tool -id ${PREFIX}/lib/libmbedtls.dylib \
		${DESTDIR}${PREFIX}/lib/libmbedtls.dylib
	install_name_tool -change libmbedx509.dylib ${PREFIX}/lib/libmbedx509.dylib \
		${DESTDIR}${PREFIX}/lib/libmbedtls.dylib
	install_name_tool -change libmbedcrypto.dylib ${PREFIX}/lib/libmbedcrypto.dylib \
		${DESTDIR}${PREFIX}/lib/libmbedtls.dylib
	install_name_tool -id ${PREFIX}/lib/libmbedx509.dylib \
		${DESTDIR}${PREFIX}/lib/libmbedx509.dylib
	install_name_tool -change libmbedcrypto.dylib ${PREFIX}/lib/libmbedcrypto.dylib \
		${DESTDIR}${PREFIX}/lib/libmbedx509.dylib
	install_name_tool -id ${PREFIX}/lib/libmbedcrypto.dylib \
		${DESTDIR}${PREFIX}/lib/libmbedcrypto.dylib
.endif

.include "../../mk/bsd.pkg.mk"
