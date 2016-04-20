# $NetBSD$

DISTNAME=	scons-2.4.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scons/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://scons.org/
COMMENT=	Software construction tool
LICENSE=	isc

USE_LANGUAGES=	# none

SPATCH=		no

.include "../../eliteraspberries/python/Makefile.common"

do-build:
	cd ${WRKSRC} && python setup.py build

do-install:
	cd ${WRKSRC} && \
	python setup.py install \
		--prefix=${DESTDIR}${PREFIX}

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
