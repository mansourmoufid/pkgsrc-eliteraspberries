# $NetBSD$

.include "../../eliteraspberries/llvm/Makefile.common"

PKGNAME=	clang-${LLVM_VERSION}
PKGREVISION=	6
CATEGORIES=	lang
DISTFILES+=	cfe-${LLVM_VERSION}.src${EXTRACT_SUFX}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://clang.llvm.org/
COMMENT=	C language family frontend for LLVM
LICENSE=	original-bsd

USE_LANGUAGES=	c c++

post-extract:
	mv ${WRKDIR}/cfe-${LLVM_VERSION}.src ${WRKSRC}/tools/clang

CXXFLAGS+=	-std=c++11 -stdlib=libc++
CXXFLAGS+=	-nostdinc++
CXXFLAGS+=	-I${BUILDLINK_PREFIX.libcxx}/include/c++/v1
LDFLAGS+=	-L${BUILDLINK_PREFIX.libcxx}/lib

CMAKE_ARGS+=	-DLLVM_USE_SANITIZER=""

# https://llvm.org/bugs/show_bug.cgi?id=25753
CMAKE_ARGS+=	-DLLVM_BUILD_EXTERNAL_COMPILER_RT=ON

BUILDLINK_DEPMETHOD.cmake=	build
.include "../../eliteraspberries/cmake/buildlink3.mk"
.include "../../eliteraspberries/libcxx/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
