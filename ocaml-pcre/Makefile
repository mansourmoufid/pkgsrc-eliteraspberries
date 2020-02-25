# $NetBSD$

DISTNAME=	7.4.3
PKGNAME=	ocaml-pcre-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=mmottl/pcre-ocaml/archive/}
DIST_SUBDIR=	ocaml-pcre

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=mmottl/pcre-ocaml/}
COMMENT=	OCaml bindings to PCRE
LICENSE=	gnu-lgpl-v2.1

WRKSRC=		${WRKDIR}/pcre-ocaml-${DISTNAME}

BUILD_TARGET=	#

post-extract:
	cd ${WRKSRC} && ${ECHO} "(version ${PKGVERSION})" >> dune-project

.include "../../devel/pcre/buildlink3.mk"
.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml/dune.mk"
.include "../../eliteraspberries/ocaml-base/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
