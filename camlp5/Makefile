# $NetBSD$

DISTNAME=	camlp5-6.15
CATEGORIES=	devel
MASTER_SITES=	http://camlp5.gforge.inria.fr/distrib/src/
EXTRACT_SUFX=	.tgz

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://camlp5.gforge.inria.fr/
COMMENT=	Preprocessor-pretty-printer of OCaml
LICENSE=	original-bsd

HAS_CONFIGURE=	yes
USE_LANGUAGES=	c
USE_TOOLS+=	gmake

CONFIGURE_ARGS+=	--prefix ${PREFIX}
CONFIGURE_ARGS+=	--mandir ${PREFIX}/${PKGMANDIR}

BUILD_TARGET=	world.opt

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
