# $NetBSD$

DISTNAME=	Pillow-3.3.0
PKGREVISION=	3
PKGNAME=	python-${DISTNAME:S/Pillow/pillow/}
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_PYPI:=P/Pillow/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://python-pillow.org/
COMMENT=	Friendly fork of the Python Imaging Library
LICENSE=	mit

SETUPPY_BUILDEXT_ARGS+=	--disable-freetype
SETUPPY_BUILDEXT_ARGS+=	--disable-jpeg2000
SETUPPY_BUILDEXT_ARGS+=	--disable-lcms
SETUPPY_BUILDEXT_ARGS+=	--disable-tiff
SETUPPY_BUILDEXT_ARGS+=	--disable-webp
SETUPPY_BUILDEXT_ARGS+=	--disable-webpmux
SETUPPY_BUILDEXT_ARGS+=	--enable-jpeg
SETUPPY_BUILDEXT_ARGS+=	--enable-zlib

.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/jpeg/buildlink3.mk"
.include "../../eliteraspberries/libpng/buildlink3.mk"
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-numpy/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/setuppy.mk"
.include "../../mk/bsd.pkg.mk"
