# $NetBSD$

DISTNAME=	pefile-2017.11.5
PKGNAME=	python-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pefile/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/erocarrera/pefile
COMMENT=	Python PE parsing module
LICENSE=	mit

USE_LANGUAGES=	c

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/setuppy.mk"
.include "../../eliteraspberries/python-future/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
