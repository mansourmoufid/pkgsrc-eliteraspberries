# $NetBSD$

DISTNAME=	Cython-${PKGVERSION_NOREV}
PKGNAME=	cython-0.25.2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=c/cython/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://cython.org/
COMMENT=	Optimising static compiler for Python
LICENSE=	apache-2.0

USE_LANGUAGES=	c

SPATCH=		no

.include "../../eliteraspberries/python/Makefile.common"

do-build:
	cd ${WRKSRC} && python setup.py build

do-install:
	cd ${WRKSRC} && \
	python setup.py install \
		--prefix=${DESTDIR}${PREFIX} \
		--record=PLIST.in \
		--single-version-externally-managed

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
