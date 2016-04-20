# $NetBSD$

DISTNAME=	ocamlgraph-1.8.7
PKGREVISION=	2
CATEGORIES=	math devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=backtracking/}
GITHUB_TAG=	b111462199e62e9e4c9a9da8df09afa45d8dc778

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=backtracking/ocamlgraph}
COMMENT=	OCamlgraph is a graph library for Objective Caml
LICENSE=	gnu-lgpl-v2.1

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c

USE_TOOLS+=	autoconf gmake perl

INSTALL_TARGET=	install-findlib

pre-configure:
	cd ${WRKSRC} && autoconf

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
