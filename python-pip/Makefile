# $NetBSD$

DISTNAME=	pip-18.0
PKGNAME=	python-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=pypa/}
GITHUB_RELEASE=	${PKGVERSION_NOREV}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://pip.pypa.io/
COMMENT=	The PyPA recommended tool for installing Python packages
LICENSE=	mit

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/setuppy.mk"
.include "../../mk/bsd.pkg.mk"
