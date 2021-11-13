# $NetBSD$

DISTNAME=	v0.1.3
PKGNAME=	python-dis3-${DISTNAME:S/v//}
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=KeyWeeUsr/dis3/archive/}
DIST_SUBDIR=	python-dis3

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/KeyWeeUsr/dis3
COMMENT=	Python 2.7 backport of the "dis" module from Python 3.5+
LICENSE=	mit

WRKSRC=		${WRKDIR}/python-dis3-${DISTNAME:S/v//}

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
