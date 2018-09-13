# $NetBSD$

GITHUB_PROJECT=	py-sdl2
DISTNAME=	${GITHUB_PROJECT}-0.9.6
PKGNAME=	${DISTNAME:S/py-/python-/}
CATEGORIES=	devel multimedia
MASTER_SITES=	${MASTER_SITE_GITHUB:=marcusva/py-sdl2/archive/}
DISTFILES=	rel_${PKGVERSION_NOREV:S/./_/g}.tar.gz
DIST_SUBDIR=	${GITHUB_PROJECT}
WRKSRC=		${WRKDIR}/${GITHUB_PROJECT}-rel_${PKGVERSION_NOREV:S/./_/g}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/marcusva/py-sdl2
COMMENT=	Python ctypes wrapper around SDL2
LICENSE=	public-domain

USE_LANGUAGES=	# none

.include "../../eliteraspberries/sdl2/buildlink3.mk"
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/setuppy.mk"
.include "../../mk/bsd.pkg.mk"
