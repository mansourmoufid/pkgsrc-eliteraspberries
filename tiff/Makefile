# $NetBSD$

DISTNAME=	tiff-4.3.0
CATEGORIES=	devel graphics
MASTER_SITES=	http://download.osgeo.org/libtiff/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://libtiff.gitlab.io/libtiff/
COMMENT=	TIFF library and utilities
LICENSE=	mit

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c

PKGCONFIG_OVERRIDE+=	libtiff-4.pc.in

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--with-pic
CONFIGURE_ARGS+=	--disable-cxx

CONFIGURE_ARGS+=	--enable-zlib
CONFIGURE_ARGS+=	--enable-lzma
CONFIGURE_ARGS+=	--enable-jpeg

.include "../../devel/zlib/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../eliteraspberries/jpeg/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
