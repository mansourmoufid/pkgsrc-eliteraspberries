# $NetBSD$

DISTNAME=	alt-ergo-1.01
PKGREVISION=	2
CATEGORIES=	math
MASTER_SITES=	https://alt-ergo.ocamlpro.com/download_manager.php?target=

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://alt-ergo.ocamlpro.com/
COMMENT=	SMT solver for program verification
LICENSE=	cecill-2.1

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c

USE_TOOLS+=	gmake

BUILDLINK_DEPMETHOD.ocaml=	build
BUILDLINK_DEPMETHOD.ocamlgraph=	build
BUILDLINK_DEPMETHOD.zarith=	build
.include "../../eliteraspberries/gmp/buildlink3.mk"
.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocamlgraph/buildlink3.mk"
.include "../../eliteraspberries/zarith/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
