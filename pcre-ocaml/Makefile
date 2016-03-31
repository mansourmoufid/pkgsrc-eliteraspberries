# $NetBSD$

DISTNAME=	pcre-ocaml-7.2.2
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=mmottl/}
GITHUB_RELEASE=	v${PKGVERSION_NOREV}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=mmottl/pcre-ocaml/}
COMMENT=	OCaml bindings to PCRE
LICENSE=	gnu-lgpl-v2.1

CONFIGURE_ARGS+=	--prefix ${PREFIX}
CONFIGURE_ARGS+=	--disable-examples

do-configure:
	cd ${WRKSRC} && \
	ocaml setup.ml -configure ${CONFIGURE_ARGS}

do-build:
	cd ${WRKSRC} && \
	ocaml setup.ml -build

do-install:
	cd ${WRKSRC} && \
	mkdir -p ${DESTDIR}${PREFIX}/lib/ocaml/site-lib && \
	ocamlfind install -destdir ${DESTDIR}${PREFIX}/lib/ocaml/site-lib \
		pcre \
		lib/META \
		_build/lib/pcre.mli \
		_build/lib/libpcre_stubs.a \
		_build/lib/pcre.cma \
		_build/lib/pcre.cmxa \
		_build/lib/pcre.a \
		_build/lib/pcre.cmxs \
		_build/lib/pcre.cmi \
		_build/lib/pcre.cmti \
		_build/lib/pcre.cmt \
		_build/lib/pcre.annot \
		_build/lib/pcre_compat.cmx \
		_build/lib/pcre.cmx

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
