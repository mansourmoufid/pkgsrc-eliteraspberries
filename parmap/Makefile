# $NetBSD$

GITHUB_PROJECT=	parmap
DISTNAME=	1.0-rc7
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME:S/-/+/}
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=rdicosmo/parmap/archive/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=rdicosmo/parmap/}
COMMENT=	Efficient parallel map, fold and mapfold for OCaml
LICENSE=	gnu-lgpl-v2

WRKSRC=		${WRKDIR}/parmap-1.0-rc7
GNU_CONFIGURE=	yes

USE_TOOLS+=	gmake

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../devel/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
