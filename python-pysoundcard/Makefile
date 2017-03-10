# $NetBSD$

GITHUB_PROJECT=	PySoundCard
DISTNAME=	0.5.2
PKGNAME=	python-pysoundcard-${DISTNAME}
CATEGORIES=	audio devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=bastibe/PySoundCard/archive/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=bastibe/PySoundCard/}
COMMENT=	Audio library based on PortAudio, CFFI and NumPy
LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}/${GITHUB_PROJECT}-${DISTNAME}
USE_LANGUAGES=	# none

.include "../../eliteraspberries/portaudio/buildlink3.mk"
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-cffi/buildlink3.mk"
.include "../../eliteraspberries/python-numpy/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/setuppy.mk"
.include "../../mk/bsd.pkg.mk"
