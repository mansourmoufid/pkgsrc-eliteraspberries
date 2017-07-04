# $NetBSD$

DISTNAME=	mbedtls-2.4.0-apache
PKGNAME=	${DISTNAME:S/-apache//}
PKGREVISION=	3
CATEGORIES=	security
MASTER_SITES=	https://tls.mbed.org/download/
EXTRACT_SUFX=	.tgz

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://tls.mbed.org/
COMMENT=	mbed TLS library
LICENSE=	apache-2.0

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}
USE_LANGUAGES=	c
USE_TOOLS+=	gmake

MAKE_ENV+=	SHARED=1

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
MAKE_ENV+=	DLEXT=dylib
.endif

BUILD_TARGET=	lib

do-install:
	mkdir -p ${DESTDIR}${PREFIX}/include/mbedtls
	for h in ${WRKDIR}/${PKGNAME_NOREV}/include/mbedtls/*; do \
		${INSTALL_DATA} $$h ${DESTDIR}${PREFIX}/include/mbedtls; \
	done
	mkdir -p ${DESTDIR}${PREFIX}/lib
	for l in ${WRKDIR}/${PKGNAME_NOREV}/library/lib*.*; do \
		${INSTALL_LIB} $$l ${DESTDIR}${PREFIX}/lib; \
	done

.include "../../mk/bsd.pkg.mk"
