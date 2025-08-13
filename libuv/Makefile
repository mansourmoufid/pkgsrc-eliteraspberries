# $NetBSD$

DISTNAME=	libuv-v1.51.0
PKGNAME=	${DISTNAME:S/-v/-/}
CATEGORIES=	devel
MASTER_SITES=	https://dist.libuv.org/dist/v${PKGVERSION_NOREV}/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://libuv.org/
COMMENT=	Multi-platform support library with a focus on async I/O
LICENSE=	modified-bsd

USE_TOOLS+=	autoconf automake autoreconf perl

GNU_CONFIGURE=	yes

pre-configure:
	cd ${WRKSRC} && autoreconf -i

.include "../../mk/bsd.pkg.mk"
