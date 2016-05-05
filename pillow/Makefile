# $NetBSD$

DISTNAME=	Pillow-3.2.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_PYPI:=P/Pillow/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://python-pillow.org/
COMMENT=	Friendly fork of the Python Imaging Library
LICENSE=	mit

.include "../../eliteraspberries/python/Makefile.common"

SUBST_FILES.python-shebang+=	PIL/*.py
SUBST_FILES.python-shebang+=	Scripts/*.py

SETUP_ARGS+=	--disable-freetype
SETUP_ARGS+=	--disable-jpeg2000
SETUP_ARGS+=	--disable-lcms
SETUP_ARGS+=	--disable-tcl
SETUP_ARGS+=	--disable-tiff
SETUP_ARGS+=	--disable-tk
SETUP_ARGS+=	--disable-webp
SETUP_ARGS+=	--disable-webpmux

SETUP_ARGS+=	--enable-jpeg
SETUP_ARGS+=	--enable-zlib

do-build:
	cd ${WRKSRC} && \
	python setup.py build_ext ${SETUP_ARGS}

do-install:
	cd ${WRKSRC} && \
	python setup.py build_ext ${SETUP_ARGS} install \
		--prefix=${DESTDIR}${PREFIX} \
		--record=PLIST.in \
		--single-version-externally-managed

.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/jpeg/buildlink3.mk"
.include "../../eliteraspberries/libpng/buildlink3.mk"
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-numpy/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
