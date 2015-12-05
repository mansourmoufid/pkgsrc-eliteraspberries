# $NetBSD$

DISTNAME=	ocamlgraph-1.8.6
PKGREVISION=	2
CATEGORIES=	math devel
MASTER_SITES=	http://ocamlgraph.lri.fr/download/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://ocamlgraph.lri.fr/
COMMENT=	OCamlgraph is a graph library for Objective Caml
LICENSE=	gnu-lgpl-v2.1

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c

USE_TOOLS+=	gmake

INSTALL_TARGET=	install-findlib

.include "../../lang/ocaml/buildlink3.mk"
.include "../../devel/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
