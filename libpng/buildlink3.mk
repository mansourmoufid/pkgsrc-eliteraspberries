# $NetBSD$

BUILDLINK_TREE+=	libpng

.if !defined(LIBPNG_BUILDLINK3_MK)
LIBPNG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libpng+=	libpng>=1.6.21
BUILDLINK_PKGSRCDIR.libpng?=	../../eliteraspberries/libpng

.include "../../devel/zlib/buildlink3.mk"
.endif	# LIBPNG_BUILDLINK3_MK

BUILDLINK_TREE+=	-libpng
