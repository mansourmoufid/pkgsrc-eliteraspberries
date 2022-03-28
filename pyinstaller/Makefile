# $NetBSD$

DISTNAME=	pyinstaller-4.7
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyinstaller/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://www.pyinstaller.org/
COMMENT=	Freezes (package) Python programs into stand-alone executables
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	c

post-extract:
.for d in Darwin-64bit Linux-32bit Linux-64bit Windows-32bit Windows-64bit
	rm -f ${WRKSRC}/PyInstaller/bootloader/${d}/run*
.endfor
	cd ${WRKSRC}/bootloader && python ./waf distclean

post-patch:
	find ${WRKSRC} -name '*.orig' | while read f; do rm -f $$f; done

pre-build:
	cd ${WRKSRC}/bootloader && python ./waf --no-universal2 all

.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/pyinstaller-hooks-contrib/buildlink3.mk"
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/python-altgraph/buildlink3.mk"
.include "../../eliteraspberries/python-importlib-metadata/buildlink3.mk"
.include "../../eliteraspberries/python-macholib/buildlink3.mk"
.include "../../eliteraspberries/python-pefile/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
