# $NetBSD$

DISTNAME=	gmp-6.1.0
CATEGORIES=	devel math
MASTER_SITES=	https://gmplib.org/download/gmp/
EXTRACT_SUFX=	.tar.lz

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://gmplib.org/
COMMENT=	GNU Multiple Precision arithmetic library
LICENSE=	gnu-lgpl-v3

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_LANGUAGES=	c

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--disable-static
CONFIGURE_ARGS+=	--disable-cxx
CONFIGURE_ARGS+=	--with-pic

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
SOEXT=		dylib
.else
SOEXT=		so
.endif
PLIST_SUBST+=	SOEXT=${SOEXT}

.include "../../mk/bsd.pkg.mk"
