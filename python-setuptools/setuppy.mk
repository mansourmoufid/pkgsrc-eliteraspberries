.if !defined(PYTHON_SETUPPY_MK)
PYTHON_SETUPPY_MK:=

.include "../../eliteraspberries/python/Makefile.common"

SETUPPY_INSTALL_ARGS+=	--prefix=${DESTDIR}${PREFIX}
SETUPPY_INSTALL_ARGS+=	--record=PLIST.in
SETUPPY_INSTALL_ARGS+=	--single-version-externally-managed

do-build:
	cd ${WRKSRC} && \
	env ${MAKE_ENV} \
	python setup.py ${SETUPPY_ARGS} \
		build_ext ${SETUPPY_BUILDEXT_ARGS} \
		build ${SETUPPY_BUILD_ARGS} \

do-install:
	cd ${WRKSRC} && \
	env ${MAKE_ENV} \
	python setup.py ${SETUPPY_ARGS} \
		build_ext ${SETUPPY_BUILDEXT_ARGS} \
		build ${SETUPPY_BUILD_ARGS} \
		install ${SETUPPY_INSTALL_ARGS}

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"

.endif	# PYTHON_SETUPPY_MK
