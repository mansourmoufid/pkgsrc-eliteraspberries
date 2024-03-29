# $NetBSD$

.if !defined(CMAKE_MK)
CMAKE_MK:=

.if empty(PKG_OPTIONS:Mdebug)
CMAKE_ARGS+=	-DCMAKE_BUILD_TYPE=Release
.else
CMAKE_ARGS+=	-DCMAKE_BUILD_TYPE=Debug
CMAKE_ARGS+=	-DCMAKE_VERBOSE_MAKEFILE:BOOL=ON
.endif
CMAKE_ARGS+=	-DCMAKE_C_FLAGS="${CPPFLAGS} ${CFLAGS}"
CMAKE_ARGS+=	-DCMAKE_CXX_FLAGS="${CPPFLAGS} ${CXXFLAGS}"
CMAKE_ARGS+=	-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}"
CMAKE_ARGS+=	-DCMAKE_INSTALL_PREFIX="${PREFIX}"
CMAKE_ARGS+=	-DCMAKE_BUILD_RPATH="${BUILDLINK_DIR}/lib"
CMAKE_ARGS+=	-DCMAKE_INSTALL_RPATH="${PREFIX}/lib"

CMAKE_DIR=			build

do-configure:
	mkdir -p ${WRKSRC}/${CMAKE_DIR}
	cd ${WRKSRC}/${CMAKE_DIR} && env ${MAKE_ENV} cmake ${CMAKE_ARGS} ..

BUILD_DIRS=			${CMAKE_DIR}

do-build:
	cd ${WRKSRC}/${CMAKE_DIR} && \
	for x in ${BUILD_TARGET}; do \
		env ${MAKE_ENV} DESTDIR=${DESTDIR} \
			cmake --build . --target $${x}; \
	done

do-install:
	cd ${WRKSRC}/${CMAKE_DIR} && \
	for x in ${INSTALL_TARGET}; do \
		env ${MAKE_ENV} DESTDIR=${DESTDIR} \
			cmake --build . --target $${x}; \
	done

.endif # CMAKE_MK
