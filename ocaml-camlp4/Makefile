# $NetBSD$

DISTNAME=	camlp4-4.08+1
PKGNAME=	ocaml-${DISTNAME:S/+/./}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=ocaml/camlp4/archive/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=ocaml/camlp4/}
COMMENT=	Camlp4 is a preprocessor for OCaml
LICENSE=	gnu-lgpl-v2

WRKSRC=		${WRKDIR}/${DISTNAME:S/+/-/}
HAS_CONFIGURE=	yes

CONFIGURE_ARGS+=	--bindir=${PREFIX}/bin
CONFIGURE_ARGS+=	--libdir=${PREFIX}/lib/ocaml
CONFIGURE_ARGS+=	--pkgdir=${PREFIX}/lib/ocaml/site-lib

BUILD_TARGET=	native
INSTALL_TARGET=	install install-META

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocamlbuild/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
