# $NetBSD$

DISTNAME=	ocaml-4.02.3
PKGREVISION=	9
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

.include "../../mk/bsd.prefs.mk"

CONFIGURE_ARGS+=	-host ${MACHINE_GNU_PLATFORM}
.if ${OPSYS} == "Darwin"
CFLAGS+=		-arch ${MACHINE_ARCH}
.endif

CONFIGURE_ARGS+=	-cc "${CC}"
CONFIGURE_ARGS+=	-aspp "${CC} -c"
CONFIGURE_ARGS+=	-as "as"

BUILD_TARGET=	world.opt

.include "../../mk/bsd.pkg.mk"
