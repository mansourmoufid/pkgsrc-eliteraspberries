# $NetBSD$

.include "../../eliteraspberries/python-pyobjc/Makefile.version"

DISTNAME=	pyobjc-framework-AVFoundation-${PYOBJC_VERSION}
PKGNAME=	python-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyobjc-framework-AVFoundation/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://bitbucket.org/ronaldoussoren/pyobjc
COMMENT=	PyObjC wrappers for the AVFoundation framework
LICENSE=	mit

USE_LANGUAGES=	c

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-pyobjc-framework-CoreAudio/buildlink3.mk"
.include "../../eliteraspberries/python-pyobjc-framework-CoreMedia/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
