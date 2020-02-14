# $NetBSD$

PKGNAME=	pyinstaller-3.6
DISTNAME=	PyInstaller-${PKGVERSION_NOREV}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=pyinstaller/}
GITHUB_RELEASE=	v${PKGVERSION_NOREV}
DIST_SUBDIR=	pyinstaller

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
	cd ${WRKSRC}/bootloader && python ./waf all

.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/python-dis3/buildlink3.mk"
.include "../../eliteraspberries/python-macholib/buildlink3.mk"
.include "../../eliteraspberries/python-pefile/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
