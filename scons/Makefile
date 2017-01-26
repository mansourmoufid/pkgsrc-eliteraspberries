# $NetBSD$

DISTNAME=	scons-2.5.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scons/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://scons.org/
COMMENT=	Software construction tool
LICENSE=	isc

USE_LANGUAGES=	# none

SPATCH=		no

do-install:
	cd ${WRKSRC} && \
	env ${MAKE_ENV} \
	python setup.py ${SETUPPY_ARGS} install --prefix=${DESTDIR}${PREFIX}

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/setuppy.mk"
.include "../../mk/bsd.pkg.mk"
