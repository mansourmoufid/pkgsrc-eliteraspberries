# $NetBSD$

DISTNAME=	wheel-0.29.0
PKGNAME=	python-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=w/wheel/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://bitbucket.org/pypa/wheel
COMMENT=	Python wheel packaging
LICENSE=	mit

USE_LANGUAGES=	# none

.include "../../eliteraspberries/python/Makefile.common"

do-build:
	cd ${WRKSRC} && \
	python setup.py build

do-install:
	cd ${WRKSRC} && \
	python setup.py install \
		--prefix=${DESTDIR}${PREFIX} \
		--record=PLIST.in \
		--single-version-externally-managed

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
