# $NetBSD$

DISTNAME=	py-sdl2-0.9.6
PKGNAME=	${DISTNAME:S/py-/python-/}
PKGREVISION=	2
CATEGORIES=	devel multimedia
MASTER_SITES=	${MASTER_SITE_GITHUB:=marcusva/py-sdl2/archive/}
DISTFILES=	rel_${PKGVERSION_NOREV:S/./_/g}.tar.gz
DIST_SUBDIR=	py-sdl2
WRKSRC=		${WRKDIR}/py-sdl2-rel_${PKGVERSION_NOREV:S/./_/g}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/marcusva/py-sdl2
COMMENT=	Python ctypes wrapper around SDL2
LICENSE=	public-domain

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/sdl2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
