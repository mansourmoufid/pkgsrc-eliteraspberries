# $NetBSD$

DISTNAME=	rel711
PKGNAME=	ocaml-camlp5-${DISTNAME:S/rel//:S/7/7./}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=camlp5/camlp5/archive/}
DIST_SUBDIR=	ocaml-camlp5

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://camlp5.github.io/
COMMENT=	Preprocessor-pretty-printer of OCaml
LICENSE=	original-bsd

WRKSRC=		${WRKDIR}/camlp5-${DISTNAME}

HAS_CONFIGURE=	yes
USE_LANGUAGES=	c
USE_TOOLS+=	gmake

CONFIGURE_ARGS+=	--libdir ${PREFIX}/lib/ocaml/site-lib
CONFIGURE_ARGS+=	--mandir ${PREFIX}/${PKGMANDIR}
CONFIGURE_ARGS+=	--prefix ${PREFIX}

BUILD_TARGET=	world.opt

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
