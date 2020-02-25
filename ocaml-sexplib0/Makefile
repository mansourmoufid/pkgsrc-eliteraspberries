# $NetBSD$

DISTNAME=	v0.13.0
PKGNAME=	ocaml-sexplib0-${DISTNAME:S/v//}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=janestreet/sexplib0/archive/}
DIST_SUBDIR=	ocaml-sexplib0

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=janestreet/sexplib0/}
COMMENT=	Library containing the definition of S-expressions
LICENSE=	mit

WRKSRC=		${WRKDIR}/sexplib0-${DISTNAME:S/v//}

BUILD_TARGET=	#

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml/dune.mk"
.include "../../mk/bsd.pkg.mk"
