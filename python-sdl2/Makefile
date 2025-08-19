# $NetBSD$

DISTNAME=		py-sdl2-0.9.17
PKGNAME=		${DISTNAME:S/py-/python-/}
CATEGORIES=		devel multimedia
MASTER_SITES=	${MASTER_SITE_GITHUB:=py-sdl/}
GITHUB_PROJECT=	py-sdl2
GITHUB_TAG=		${PKGVERSION_NOREV}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/marcusva/py-sdl2
COMMENT=	Python ctypes wrapper around SDL2
LICENSE=	public-domain

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/sdl2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
