# $NetBSD$

DISTNAME=	frama-c-Magnesium-20151002
PKGNAME=	${DISTNAME:S/-Magnesium//}
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	http://frama-c.com/download/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://frama-c.com/
COMMENT=	Frama-C is a static analysis framework
LICENSE=	gnu-lgpl-v2

GNU_CONFIGURE=	yes

USE_TOOLS+=	gmake

CONFIGURE_ARGS+=	--disable-gui

.include "options.mk"

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../eliteraspberries/gmp/buildlink3.mk"
.include "../../eliteraspberries/zarith/buildlink3.mk"
.include "../../eliteraspberries/ocamlgraph/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
