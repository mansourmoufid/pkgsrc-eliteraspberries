# $NetBSD$

VERSION=	0.2.11
DISTNAME=	PyAudio-${VERSION}
PKGNAME=	python-pyaudio-${VERSION}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=P/PyAudio/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://people.csail.mit.edu/hubert/pyaudio/
COMMENT=	PyAudio provides Python bindings for PortAudio
LICENSE=	mit

USE_LANGUAGES=	c

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/setuppy.mk"
.include "../../eliteraspberries/portaudio/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
