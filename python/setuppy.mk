# $NetBSD$

.if !defined(PYTHON_SETUPPY_MK)
PYTHON_SETUPPY_MK:=

SETUPPY_INSTALL_ARGS+=	--install-lib=${DESTDIR}${PREFIX}/lib/python
SETUPPY_INSTALL_ARGS+=	--no-compile
SETUPPY_INSTALL_ARGS+=	--prefix=${DESTDIR}${PREFIX}
SETUPPY_INSTALL_ARGS+=	--record=PLIST.in

#SETUPPY_INSTALL_ARGS+=	--single-version-externally-managed

do-build:
	cd ${WRKSRC} && \
	env ${MAKE_ENV} \
	python setup.py ${SETUPPY_ARGS} \
		build_ext ${SETUPPY_BUILDEXT_ARGS} \
		build ${SETUPPY_BUILD_ARGS}

do-install:
	cd ${WRKSRC} && \
	env ${MAKE_ENV} \
	python setup.py ${SETUPPY_ARGS} \
		build_ext ${SETUPPY_BUILDEXT_ARGS} \
		build ${SETUPPY_BUILD_ARGS} \
		install ${SETUPPY_INSTALL_ARGS}

.endif	# PYTHON_SETUPPY_MK
