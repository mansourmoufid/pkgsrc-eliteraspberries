# $NetBSD$

DISTNAME=	setuptools-40.2.0
PKGNAME=	python-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=s/setuptools/}
EXTRACT_SUFX=	.zip

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/pypa/setuptools
COMMENT=	Python setuptools
LICENSE=	mit

SPATCH=		no

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
.include "../../mk/bsd.pkg.mk"
