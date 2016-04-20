# $NetBSD$

DISTNAME=	findlib-1.6.1
PKGNAME=	ocaml-${DISTNAME}
PKGREVISION=	5
CATEGORIES=	devel
MASTER_SITES=	http://download.camlcity.org/download/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://projects.camlcity.org/projects/findlib.html
COMMENT=	Library manager for OCaml
LICENSE=	mit

HAS_CONFIGURE=	yes
USE_LANGUAGES=	c
USE_TOOLS+=	gmake

MAKE_JOBS_SAFE=	no

CONFIGURE_ARGS+=	-bindir ${PREFIX}/bin
CONFIGURE_ARGS+=	-mandir ${PREFIX}/${PKGMANDIR}
CONFIGURE_ARGS+=	-sitelib ${PREFIX}/lib/ocaml/site-lib
CONFIGURE_ARGS+=	-no-camlp4
CONFIGURE_ARGS+=	-no-custom

BUILD_TARGET=	all opt

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
