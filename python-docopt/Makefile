# $NetBSD$

DISTNAME=	docopt-0.6.2
PKGNAME=	python-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=d/docopt/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/docopt/docopt
COMMENT=	Pythonic command line arguments parser
LICENSE=	mit

USE_LANGUAGES=	# none

SPATCH=		no

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/setuppy.mk"
.include "../../mk/bsd.pkg.mk"
