# $NetBSD$

BUILDLINK_TREE+=	motif

.if !defined(MOTIF_BUILDLINK3_MK)
MOTIF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.motif+=	motif>=2.3.7
BUILDLINK_PKGSRCDIR.motif?=	../../eliteraspberries/motif

BUILDLINK_INCDIRS.motif+=	include/Mrm
BUILDLINK_INCDIRS.motif+=	include/X11
BUILDLINK_INCDIRS.motif+=	include/Xm
BUILDLINK_INCDIRS.motif+=	include/uil

.include "../../eliteraspberries/freetype2/buildlink3.mk"
.include "../../eliteraspberries/fontconfig/buildlink3.mk"
.include "../../eliteraspberries/libpng/buildlink3.mk"
.endif	# MOTIF_BUILDLINK3_MK

BUILDLINK_TREE+=	-motif
