# $NetBSD$

DISTNAME=	pyglet-1.2.4
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyglet/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://pyglet.org/
COMMENT=	Cross-platform windowing and multimedia library for Python
LICENSE=	original-bsd

USE_LANGUAGES=	# none

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
