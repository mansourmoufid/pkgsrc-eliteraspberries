# $NetBSD$

DISTNAME=	20.0.2
PKGNAME=	python-pip-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=pypa/pip/archive/}
DIST_SUBDIR=	pip

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://pip.pypa.io/
COMMENT=	The PyPA recommended tool for installing Python packages
LICENSE=	mit

WRKSRC=		${WRKDIR}/pip-${DISTNAME}

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
