# $NetBSD$

DISTNAME=	release-1.9.1
PKGNAME=	ocaml-zarith-${DISTNAME:S/release-//}
CATEGORIES=	math devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=ocaml/Zarith/archive/}
DIST_SUBDIR=	ocaml-zarith

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/ocaml/Zarith/
COMMENT=	Arithmetic and logical operations over arbitrary-precision integers
LICENSE=	gnu-lgpl-v2

HAS_CONFIGURE=	yes

USE_TOOLS+=	gmake perl

WRKSRC=		${WRKDIR}/Zarith-${DISTNAME}

CONFIGURE_ARGS+=	-installdir ${PREFIX}/lib/ocaml/site-lib
CONFIGURE_ARGS+=	-ocamllibdir ${PREFIX}/lib/ocaml

.include "../../eliteraspberries/gmp/buildlink3.mk"
.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
