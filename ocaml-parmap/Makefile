# $NetBSD$

DISTNAME=	1.1.1
PKGNAME=	ocaml-parmap-${DISTNAME:S/-rc/./}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=rdicosmo/parmap/archive/}
DIST_SUBDIR=	ocaml-parmap

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=rdicosmo/parmap/}
COMMENT=	Efficient parallel map, fold and mapfold for OCaml
LICENSE=	gnu-lgpl-v2

WRKSRC=		${WRKDIR}/parmap-${DISTNAME}

BUILD_TARGET=	#

post-extract:
	cd ${WRKSRC} && ${ECHO} "(version ${PKGVERSION})" >> dune-project

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml/dune.mk"
.include "../../mk/bsd.pkg.mk"
