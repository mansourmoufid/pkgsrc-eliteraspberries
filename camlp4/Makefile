# $NetBSD$

DISTNAME=	camlp4-4.02+7
PKGNAME=	${DISTNAME:S/+/./}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=ocaml/}
GITHUB_TAG=	4a1443ba45e64087e6eb77df092c87c83cba1216

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=ocaml/camlp4/}
COMMENT=	Camlp4 is a preprocessor for OCaml
LICENSE=	gnu-lgpl-v2

WRKSRC=		${WRKDIR}/camlp4-${GITHUB_TAG}
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
