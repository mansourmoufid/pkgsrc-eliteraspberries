# $NetBSD$

DISTNAME=	numpy-1.11.0
PKGNAME=	python-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=numpy}/NumPy/${PKGVERSION_NOREV}/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://www.numpy.org/
COMMENT=	Python numerical computing package
LICENSE=	original-bsd

USE_LANGUAGES=	c

.include "../../eliteraspberries/python/Makefile.common"

MAKE_ENV+=	OPT="-ffast-math"

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/setuppy.mk"
.include "../../mk/bsd.pkg.mk"
