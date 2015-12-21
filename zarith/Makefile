# $NetBSD$

DISTNAME=	zarith-1.4.1
PKGREVISION=	3
CATEGORIES=	math devel
MASTER_SITES=	https://forge.ocamlcore.org/frs/download.php/1574/
EXTRACT_SUFX=	.tgz

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://forge.ocamlcore.org/projects/zarith/
COMMENT=	Arithmetic and logical operations over arbitrary-precision integers
LICENSE=	gnu-lgpl-v2

HAS_CONFIGURE=	yes

USE_TOOLS+=	gmake perl

.include "../../devel/gmp/buildlink3.mk"
.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
