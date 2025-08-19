# $NetBSD$

DISTNAME=	setuptools-49.6.0
PKGNAME=	python-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=s/setuptools/}
EXTRACT_SUFX=	.zip

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/pypa/setuptools
COMMENT=	Python setuptools
LICENSE=	mit

SETUPPY_INSTALL_ARGS+=	--single-version-externally-managed

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../mk/bsd.pkg.mk"
