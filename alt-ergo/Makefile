# $NetBSD$

DISTNAME=	alt-ergo-0.99.1
PKGREVISION=	2
CATEGORIES=	math
MASTER_SITES=	http://alt-ergo.ocamlpro.com/download_manager.php?target=

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://alt-ergo.ocamlpro.com/
COMMENT=	SMT solver for program verification
LICENSE=	cecill-2.1

WRKSRC=		${WRKDIR}/alt-ergo-0.99.1
GNU_CONFIGURE=	yes
USE_LANGUAGES=	c

USE_TOOLS+=	gmake

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/zarith/buildlink3.mk"
.include "../../eliteraspberries/ocamlgraph/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
