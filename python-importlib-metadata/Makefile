# $NetBSD$

DISTNAME=	importlib_metadata-4.8.2
PKGNAME=	python-${DISTNAME:S/_/-/}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=i/importlib-metadata/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/python/importlib_metadata
COMMENT=	Library to access the metadata for a Python package
LICENSE=	apache-2.0

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-typing-extensions/buildlink3.mk"
.include "../../eliteraspberries/python-zipp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
