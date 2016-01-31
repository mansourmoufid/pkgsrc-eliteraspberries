# $NetBSD$

DISTNAME=	ocamlgraph-1.8.6
PKGREVISION=	6
CATEGORIES=	math devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=backtracking/}
GITHUB_TAG=	c10607cdeab1200834cde8f5f6a2f8ed1de4d76c

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/backtracking/ocamlgraph
COMMENT=	OCamlgraph is a graph library for Objective Caml
LICENSE=	gnu-lgpl-v2.1

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c

USE_TOOLS+=	autoconf gmake

INSTALL_TARGET=	install-findlib

pre-configure:
	cd ${WRKSRC} && autoconf

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
