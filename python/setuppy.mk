# $NetBSD$

.if !defined(PYTHON_SETUPPY_MK)
PYTHON_SETUPPY_MK:=

SETUPPY_INSTALL_ARGS+=	--install-lib=${DESTDIR}${PREFIX}/lib/python
SETUPPY_INSTALL_ARGS+=	--no-compile
SETUPPY_INSTALL_ARGS+=	--prefix=${DESTDIR}${PREFIX}
SETUPPY_INSTALL_ARGS+=	--single-version-externally-managed
SETUPPY_INSTALL_ARGS+=	--record=PLIST.in

MAKE_ENV+=	PYTHONPATH="${DESTDIR}${PREFIX}/lib/python:${PYTHONPATH}"

do-build:
	cd ${WRKSRC} && \
	env ${MAKE_ENV} \
	python setup.py ${SETUPPY_ARGS} build ${SETUPPY_BUILD_ARGS}

do-install:
	cd ${WRKSRC} && \
	env ${MAKE_ENV} \
	python setup.py ${SETUPPY_ARGS} install ${SETUPPY_INSTALL_ARGS}

.endif	# PYTHON_SETUPPY_MK
