# $NetBSD$

GITHUB_PROJECT=	pyinstaller
PKGNAME=	${GITHUB_PROJECT}-3.1.1
DISTNAME=	PyInstaller-${PKGVERSION_NOREV}
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=pyinstaller/}
GITHUB_RELEASE=	v${PKGVERSION_NOREV}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://www.pyinstaller.org/
COMMENT=	Freezes (package) Python programs into stand-alone executables
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	c

.include "../../eliteraspberries/python/Makefile.common"

post-extract:
	rm -f ${WRKSRC}/PyInstaller/bootloader/Darwin-64bit/run*
	rm -f ${WRKSRC}/PyInstaller/bootloader/Linux-32bit/run*
	rm -f ${WRKSRC}/PyInstaller/bootloader/Linux-64bit/run*

do-build:
	cd ${WRKSRC}/bootloader && python ./waf distclean all
	cd ${WRKSRC} && python setup.py build

do-install:
	cd ${WRKSRC} && \
	python setup.py install \
		--prefix=${DESTDIR}${PREFIX} \
		--record=PLIST.in \
		--single-version-externally-managed

.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
