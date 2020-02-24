# $NetBSD$

DISTNAME=	0.14.0
PKGNAME=	ocamlbuild-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=ocaml/ocamlbuild/archive/}
DIST_SUBDIR=	ocamlbuild

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/ocaml/ocamlbuild
COMMENT=	OCaml generic build tool
LICENSE=	gnu-lgpl-v2

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}

USE_TOOLS+=	gmake

do-configure:
	cd ${WRKSRC} && \
	${MAKE_PROGRAM} configure OCAML_NATIVE=true PREFIX=${PREFIX}

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
