# $NetBSD$

DISTNAME=	ocaml-4.12.1
CATEGORIES=	lang
MASTER_SITES=	http://caml.inria.fr/pub/distrib/ocaml-4.12/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://ocaml.org/
COMMENT=	OCaml is a general purpose programming language
LICENSE=	qpl-v1.0 AND gnu-lgpl-v2

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c

USE_TOOLS+=	autoconf gmake perl

pre-configure:
	cd ${WRKSRC} && autoconf -f

CONFIGURE_ARGS+=	AS=${AS}
CONFIGURE_ARGS+=	ASPP="${CC} -c"
CONFIGURE_ARGS+=	CC=${CC}

CONFIGURE_ARGS+=	--prefix=${PREFIX}

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--with-pic

BUILD_TARGET=	world.opt

INSTALL_UNSTRIPPED=	yes

.include "../../mk/bsd.pkg.mk"
