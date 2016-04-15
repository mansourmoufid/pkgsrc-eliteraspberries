# $NetBSD$

DISTNAME=	coq-8.5
CATEGORIES=	devel math
MASTER_SITES=	https://coq.inria.fr/distrib/V${PKGVERSION_NOREV}/files/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://coq.inria.fr/
COMMENT=	Coq proof assistant
LICENSE=	gnu-lgpl-v2.1

HAS_CONFIGURE=	yes

USE_TOOLS+=	gmake

CONFIGURE_ARGS+=	-prefix ${PREFIX}
CONFIGURE_ARGS+=	-mandir ${PREFIX}/${PKGMANDIR}
CONFIGURE_ARGS+=	-usecamlp5
CONFIGURE_ARGS+=	-coqide no

BUILD_TARGET=		world
MAKE_ENV+=		COQINSTALLPREFIX=${DESTDIR}

BUILDLINK_DEPMETHOD.camlp5=	build
.include "../../eliteraspberries/camlp5/buildlink3.mk"
.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
