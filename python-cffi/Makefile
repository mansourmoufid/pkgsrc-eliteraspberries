# $NetBSD$

DISTNAME=	cffi-1.13.2
PKGNAME=	python-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=c/cffi/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://bitbucket.org/cffi/cffi
COMMENT=	Foreign Function Interface for Python calling C code
LICENSE=	mit

USE_LANGUAGES=	c

.include "../../eliteraspberries/libffi/buildlink3.mk"
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/python-pycparser/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
