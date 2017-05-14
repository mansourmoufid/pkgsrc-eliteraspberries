# $NetBSD$

BUILDLINK_TREE+=	fontconfig

.if !defined(FONTCONFIG_BUILDLINK3_MK)
FONTCONFIG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.fontconfig+=	fontconfig>=2.12.1
BUILDLINK_PKGSRCDIR.fontconfig?=	../../eliteraspberries/fontconfig

BUILDLINK_INCDIRS.fontconfig+=	include/fontconfig

.include "../../eliteraspberries/freetype2/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.endif	# FONTCONFIG_BUILDLINK3_MK

BUILDLINK_TREE+=	-fontconfig
