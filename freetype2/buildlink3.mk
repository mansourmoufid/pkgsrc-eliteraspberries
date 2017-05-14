# $NetBSD$

BUILDLINK_TREE+=	freetype2

.if !defined(FREETYPE2_BUILDLINK3_MK)
FREETYPE2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.freetype2+=	freetype2>=2.8
BUILDLINK_PKGSRCDIR.freetype2?=	../../eliteraspberries/freetype2

BUILDLINK_INCDIRS.freetype2+=	include/freetype2

.include "../../devel/zlib/buildlink3.mk"
.include "../../archivers/bzip2/buildlink3.mk"
.include "../../eliteraspberries/libpng/buildlink3.mk"
.endif	# FREETYPE2_BUILDLINK3_MK

BUILDLINK_TREE+=	-freetype2
