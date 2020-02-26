# $NetBSD$

DISTNAME=	v1.8.8
PKGNAME=	ocamlgraph-${DISTNAME:S/v//}
CATEGORIES=	math devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=backtracking/ocamlgraph/archive/}
DIST_SUBDIR=	ocamlgraph

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://ocamlgraph.lri.fr/
COMMENT=	OCamlgraph is a graph library for Objective Caml
LICENSE=	gnu-lgpl-v2.1

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c

USE_TOOLS+=	autoconf gmake perl

INSTALL_TARGET=	install-findlib

pre-configure:
	cd ${WRKSRC} && autoconf

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
