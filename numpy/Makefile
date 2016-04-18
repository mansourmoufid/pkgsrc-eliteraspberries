# $NetBSD$

DISTNAME=	numpy-1.11.0
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=numpy}/NumPy/${PKGVERSION_NOREV}/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://www.numpy.org/
COMMENT=	Python numerical computing package
LICENSE=	original-bsd

USE_LANGUAGES=	c

SPATCH=		no

.include "../../eliteraspberries/python/Makefile.common"

do-build:
	cd ${WRKSRC} && \
	env OPT="-ffast-math" \
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
