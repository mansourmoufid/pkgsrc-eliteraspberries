# $NetBSD$

.include "../../eliteraspberries/python-pyobjc/Makefile.version"

DISTNAME=	pyobjc-framework-IOSurface-${PYOBJC_VERSION}
PKGNAME=	python-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyobjc-framework-IOSurface/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://bitbucket.org/ronaldoussoren/pyobjc
COMMENT=	PyObjC wrappers for the IOSurface framework
LICENSE=	mit

USE_LANGUAGES=	c

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
