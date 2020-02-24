# $NetBSD$

DISTNAME=	menhir-20190924
PKGNAME=	ocaml-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	https://gitlab.inria.fr/fpottier/menhir/-/archive/${PKGVERSION}/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://cristal.inria.fr/~fpottier/menhir/
COMMENT=	LR(1) parser generator for the OCaml programming language
LICENSE=	qpl-v1.0 AND gnu-lgpl-v2

USE_TOOLS+=	gmake

NO_CONFIGURE=	yes

MAKE_ENV+=	PREFIX=${PREFIX}
MAKE_ENV+=	bindir=${PREFIX}/bin
MAKE_ENV+=	docdir=${PREFIX}/share/doc/menhir
MAKE_ENV+=	libdir=${PREFIX}/lib/ocaml/menhir
MAKE_ENV+=	mandir=${PREFIX}/${PKGMANDIR}
MAKE_ENV+=	pkgdir=${PREFIX}/lib/ocaml/site-lib

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocamlbuild/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
