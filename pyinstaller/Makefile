# $NetBSD$

GITHUB_PROJECT=	pyinstaller
PKGNAME=	${GITHUB_PROJECT}-3.2
PKGREVISION=	3
DISTNAME=	PyInstaller-${PKGVERSION_NOREV}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=pyinstaller/}
GITHUB_RELEASE=	v${PKGVERSION_NOREV}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://www.pyinstaller.org/
COMMENT=	Freezes (package) Python programs into stand-alone executables
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	c

post-extract:
	rm -f ${WRKSRC}/PyInstaller/bootloader/Darwin-64bit/run*
	rm -f ${WRKSRC}/PyInstaller/bootloader/Linux-32bit/run*
	rm -f ${WRKSRC}/PyInstaller/bootloader/Linux-64bit/run*
	cd ${WRKSRC}/bootloader && python ./waf distclean

pre-build:
	cd ${WRKSRC}/bootloader && python ./waf all

.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/setuppy.mk"
.include "../../mk/bsd.pkg.mk"
