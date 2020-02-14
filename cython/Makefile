# $NetBSD$

DISTNAME=	Cython-${PKGVERSION_NOREV}
PKGNAME=	cython-0.29.14
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=c/cython/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://cython.org/
COMMENT=	Optimising static compiler for Python
LICENSE=	apache-2.0

USE_LANGUAGES=	c

post-patch:
	find ${WRKSRC} -name '*.orig' | while read f; do rm -f $$f; done

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
