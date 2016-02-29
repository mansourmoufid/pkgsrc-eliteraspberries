# $NetBSD$

GITHUB_PROJECT=	camlp4
DISTNAME=	4.02+6
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME:S/+/./}
PKGREVISION=	5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=ocaml/camlp4/archive/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=ocaml/camlp4/}
COMMENT=	Camlp4 is a preprocessor for OCaml
LICENSE=	gnu-lgpl-v2

WRKSRC=		${WRKDIR}/camlp4-${DISTNAME:S/+/-/}
HAS_CONFIGURE=	yes
USE_LANGUAGES=	c

CONFIGURE_ARGS+=	--bindir=${PREFIX}/bin
CONFIGURE_ARGS+=	--libdir=${PREFIX}/lib/ocaml
CONFIGURE_ARGS+=	--pkgdir=${PREFIX}/lib/ocaml/site-lib

BUILD_TARGET=	byte
INSTALL_TARGET=	install install-META

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
