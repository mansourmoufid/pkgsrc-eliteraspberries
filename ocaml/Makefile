# $NetBSD$

DISTNAME=	ocaml-4.02.3
PKGREVISION=	7
CATEGORIES=	lang
MASTER_SITES=	http://caml.inria.fr/pub/distrib/ocaml-4.02/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://ocaml.org/
COMMENT=	OCaml is a general purpose programming language
LICENSE=	qpl-v1.0 AND gnu-lgpl-v2

HAS_CONFIGURE=	yes
USE_LANGUAGES=	c

USE_TOOLS+=	gmake

CONFIGURE_ARGS+=	-prefix ${PREFIX}
CONFIGURE_ARGS+=	-libs ${LDFLAGS:Q}
CONFIGURE_ARGS+=	-host ${MACHINE_GNU_PLATFORM}

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
CONFIGURE_ARGS+=	-cc "${CC} -arch ${MACHINE_ARCH}"
CONFIGURE_ARGS+=	-aspp "${CC} -arch ${MACHINE_ARCH} -c"
CONFIGURE_ARGS+=	-as "as -arch ${MACHINE_ARCH}"
.else
CONFIGURE_ARGS+=	-cc ${CC}
.endif

CFLAGS=
LDFLAGS=

BUILD_TARGET=	world.opt

.include "../../mk/bsd.pkg.mk"
