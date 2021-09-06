# $NetBSD$

DISTNAME=	libpng-1.6.37
CATEGORIES=	devel graphics
MASTER_SITES=	http://download.sourceforge.net/libpng/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://www.libpng.org/pub/png/libpng.html
COMMENT=	PNG reference library
LICENSE=	png-license

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	libpng.pc.in
PKGCONFIG_OVERRIDE+=	scripts/libpng.pc.in

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--with-pic

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
