# $NetBSD$

DISTNAME=	v0.13.0
PKGNAME=	ocaml-base-${DISTNAME:S/v//}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=janestreet/base/archive/}
DIST_SUBDIR=	ocaml-base

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=janestreet/base/}
COMMENT=	Full standard library replacement for OCaml
LICENSE=	mit

WRKSRC=		${WRKDIR}/base-${DISTNAME:S/v//}

BUILD_TARGET=	#

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml/dune.mk"
.include "../../eliteraspberries/ocaml-sexplib0/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
