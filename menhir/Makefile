# $NetBSD$

DISTNAME=	menhir-20151112
PKGREVISION=	4
CATEGORIES=	devel
MASTER_SITES=	http://cristal.inria.fr/~fpottier/menhir/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://cristal.inria.fr/~fpottier/menhir/
COMMENT=	LR(1) parser generator for the OCaml programming language
LICENSE=	qpl-v1.0 AND gnu-lgpl-v2

USE_LANGUAGES=	c

NO_CONFIGURE=	yes
USE_TOOLS+=	gmake
MAKE_JOBS_SAFE=	no

MAKE_ENV+=	PREFIX=${PREFIX}
MAKE_ENV+=	bindir=${PREFIX}/bin
MAKE_ENV+=	libdir=${PREFIX}/lib/ocaml/menhir
MAKE_ENV+=	mandir=${PREFIX}/${PKGMANDIR}
MAKE_ENV+=	docdir=${PREFIX}/share/doc/menhir

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
