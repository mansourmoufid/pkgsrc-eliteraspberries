# $NetBSD$

DISTNAME=	frama-c-Sodium-20150201
PKGNAME=	${DISTNAME:S/-Sodium//}
CATEGORIES=	devel
MASTER_SITES=	http://frama-c.com/download/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://frama-c.com/
COMMENT=	Frama-C is a static analysis framework
LICENSE=	gnu-lgpl-v2

GNU_CONFIGURE=	yes

USE_TOOLS+=	gmake
EXTRACT_USING=	gtar

CONFIGURE_ARGS+=	--disable-gui

.include "options.mk"

.include "../../lang/ocaml/buildlink3.mk"
.include "../../devel/ocaml-findlib/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../eliteraspberries/zarith/buildlink3.mk"
.include "../../eliteraspberries/ocamlgraph/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
