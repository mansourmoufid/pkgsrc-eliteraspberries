# $NetBSD$

DISTNAME=	typing_extensions-4.2.0
PKGNAME=	python-${DISTNAME:S/_/-/}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=t/typing-extensions/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/python/typing
COMMENT=	Backported and Experimental Type Hints for Python 3.6+
LICENSE=	python-software-foundation

INSTALLATION_DIRS=	lib/python

WRKSRC=		${WRKDIR}/${DISTNAME}/src

post-extract:
	cp files/setup.py ${WRKSRC}/

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
