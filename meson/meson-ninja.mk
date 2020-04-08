# $NetBSD$

.if !defined(MESON_NINJA_MK)
MESON_NINJA_MK:=

MESON_DIR=		build

MESON_CONFIGURE_ARGS+=	--libdir=lib
MESON_CONFIGURE_ARGS+=	--mandir=${PKGMANDIR}
MESON_CONFIGURE_ARGS+=	--prefix=${PREFIX}

do-configure:
	cd ${WRKSRC} && env ${CONFIGURE_ENV} meson setup ${MESON_DIR} .
	cd ${WRKSRC} && env ${CONFIGURE_ENV} \
		meson configure ${MESON_CONFIGURE_ARGS} ${MESON_DIR}

MAKE_ENV+=			DESTDIR=${DESTDIR}
NINJA_ARGS+=		-C ${MESON_DIR}

do-build:
	cd ${WRKSRC} && env ${MAKE_ENV} ninja ${NINJA_ARGS}

do-install:
	cd ${WRKSRC} && env ${MAKE_ENV} ninja ${NINJA_ARGS} install

.endif	# MESON_NINJA_MK
