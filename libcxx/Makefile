# $NetBSD$

.include "../../eliteraspberries/llvm/Makefile.common"

PKGNAME=	libcxx-${LLVM_VERSION}
PKGREVISION=	3
CATEGORIES=	devel
DISTFILES+=	libcxxabi-${LLVM_VERSION}.src${EXTRACT_SUFX} \
		libcxx-${LLVM_VERSION}.src${EXTRACT_SUFX}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://libcxx.llvm.org/
COMMENT=	LLVM C++ standard library
LICENSE=	mit

USE_LANGUAGES=	c c++

post-extract:
	mv ${WRKDIR}/libcxxabi-${LLVM_VERSION}.src ${WRKSRC}/projects/libcxxabi
	mv ${WRKDIR}/libcxx-${LLVM_VERSION}.src ${WRKSRC}/projects/libcxx

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
CMAKE_ARGS+=	-DCMAKE_OSX_DEPLOYMENT_TARGET=10.9
.endif

BUILD_TARGET=	cxxabi cxx
INSTALL_TARGET=	install-libcxxabi install-libcxx

.include "../../mk/bsd.pkg.mk"
