# $NetBSD$

DISTNAME=	libffi-3.4.2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=libffi/}
GITHUB_RELEASE=	v${PKGVERSION_NOREV}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://sourceware.org/libffi/
COMMENT=	Portable Foreign Function Interface library
LICENSE=	modified-bsd

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c

PKGCONFIG_OVERRIDE+=	libffi.pc.in

SPATCH=		no

CONFIGURE_ARGS+=	--includedir=${PREFIX}/include
CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--disable-static
CONFIGURE_ARGS+=	--with-pic
CONFIGURE_ARGS+=	--enable-portable-binary

.include "../../mk/bsd.pkg.mk"
