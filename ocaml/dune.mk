# $NetBSD$

.if !defined(OCAML_DUNE_MK)
OCAML_DUNE_MK:=

DUNE_INSTALL_ARGS+=	--destdir=${DESTDIR}
DUNE_INSTALL_ARGS+=	--libdir=${PREFIX}/lib/ocaml/site-lib
DUNE_INSTALL_ARGS+=	--mandir=${PKGMANDIR}
DUNE_INSTALL_ARGS+=	--prefix=${PREFIX}

do-configure:

do-build:
	cd ${WRKSRC} && \
	env ${MAKE_ENV} \
	dune ${DUNE_ARGS} build ${DUNE_BUILD_ARGS} ${BUILD_TARGET}

do-install:
	cd ${WRKSRC} && \
		env ${MAKE_ENV} \
		dune ${DUNE_ARGS} install ${DUNE_INSTALL_ARGS}
	cd ${DESTDIR}${PREFIX} && \
		mkdir -p share && rm -rf share/doc && mv doc share/

.include "../../eliteraspberries/ocaml-dune/buildlink3.mk"

.endif # OCAML_DUNE_MK
