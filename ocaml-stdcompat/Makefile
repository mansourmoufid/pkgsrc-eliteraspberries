# $NetBSD$

DISTNAME=	13
PKGNAME=	ocaml-stdcompat-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=thierry-martinez/stdcompat/archive/}
DIST_SUBDIR=	stdcompat

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/thierry-martinez/stdcompat/
COMMENT=	Compatibility module for OCaml standard library
LICENSE=	2-clause-bsd

GNU_CONFIGURE=	yes
USE_TOOLS+=	autoconf automake autoreconf gmake perl

WRKSRC=		${WRKDIR}/stdcompat-${DISTNAME}

pre-configure:
	cd ${WRKSRC} && autoreconf -i

CONFIGURE_ARGS+=	--libdir ${PREFIX}/lib/ocaml/site-lib

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
