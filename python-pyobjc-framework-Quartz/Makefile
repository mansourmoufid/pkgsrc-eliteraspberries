# $NetBSD$

DISTNAME=	pyobjc-framework-Quartz-4.1
PKGNAME=	python-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyobjc-framework-Quartz/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://bitbucket.org/ronaldoussoren/pyobjc
COMMENT=	PyObjC wrappers for the Quartz frameworks
LICENSE=	mit

USE_LANGUAGES=	c

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/setuppy.mk"
.include "../../eliteraspberries/python-pyobjc-core/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
