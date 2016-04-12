# $NetBSD$

BUILDLINK_TREE+=	libcxx

.if !defined(LIBCXX_BUILDLINK3_MK)
LIBCXX_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libcxx+=	libcxx>=3.8.0
BUILDLINK_PKGSRCDIR.libcxx?=	../../eliteraspberries/libcxx

BUILDLINK_DEPMETHOD.cmake=	build
.include "../../eliteraspberries/cmake/buildlink3.mk"
.endif	# LIBCXX_BUILDLINK3_MK

BUILDLINK_INCDIRS.libcxx=	include/c++/v1

BUILDLINK_TREE+=	-libcxx
