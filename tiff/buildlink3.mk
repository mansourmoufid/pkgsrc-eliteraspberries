# $NetBSD$
# BUILDLINK_DEPMETHOD.tiff?=	build

BUILDLINK_TREE+=	tiff

.if !defined(TIFF_BUILDLINK3_MK)
TIFF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.tiff+=	tiff>=4.0.6
BUILDLINK_PKGSRCDIR.tiff?=	../../eliteraspberries/tiff

.include "../../devel/zlib/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../eliteraspberries/jpeg/buildlink3.mk"
.endif	# TIFF_BUILDLINK3_MK

BUILDLINK_TREE+=	-tiff
