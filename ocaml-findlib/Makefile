# $NetBSD$

DISTNAME=	findlib-1.8.1
PKGNAME=	ocaml-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	http://download.camlcity.org/download/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://projects.camlcity.org/projects/findlib.html
COMMENT=	Library manager for OCaml
LICENSE=	mit

HAS_CONFIGURE=	yes
USE_LANGUAGES=	c
USE_TOOLS+=	gmake m4

INSTALLATION_DIRS+=	share

MAKE_JOBS_SAFE=	no

CONFIGURE_ARGS+=	-bindir ${PREFIX}/bin
CONFIGURE_ARGS+=	-config ${PKG_SYSCONFDIR}/findlib.conf
CONFIGURE_ARGS+=	-mandir ${PREFIX}/${PKGMANDIR}
CONFIGURE_ARGS+=	-sitelib ${PREFIX}/lib/ocaml/site-lib
CONFIGURE_ARGS+=	-no-camlp4
CONFIGURE_ARGS+=	-no-custom

CONF_FILES+=	${PREFIX}/share/findlib.conf ${PKG_SYSCONFDIR}/findlib.conf

BUILD_TARGET=	findlib.conf opt

post-install:
	${INSTALL_DATA} ${WRKSRC}/findlib.conf ${DESTDIR}${PREFIX}/share/

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
