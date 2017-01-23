# $NetBSD$

DISTNAME=	fftw-3.3.6-pl1
PKGNAME=	${DISTNAME:S/-pl1//}
CATEGORIES=	math
MASTER_SITES=	http://fftw.org/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://fftw.org/
COMMENT=	C library for computing the discrete Fourier transform
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c

SPATCH=		no

PKGCONFIG_OVERRIDE+=	fftw.pc.in

INFO_FILES=	fftw3.info

CONFIGURE_ARGS+=	--disable-static
CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--disable-fortran
CONFIGURE_ARGS+=	--disable-mpi
CONFIGURE_ARGS+=	--disable-openmp
CONFIGURE_ARGS+=	--disable-threads
CONFIGURE_ARGS+=	--with-pic

CONFIGURE_ARGS+=	--enable-float

.include "../../mk/bsd.prefs.mk"

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=	--enable-sse
.elif ${MACHINE_ARCH} == "x86_64"
CONFIGURE_ARGS+=	--enable-sse2
.endif

.include "../../mk/bsd.pkg.mk"
