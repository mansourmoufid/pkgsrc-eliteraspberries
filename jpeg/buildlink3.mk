# $NetBSD$
# BUILDLINK_DEPMETHOD.jpeg?=	build

BUILDLINK_TREE+=	jpeg

.if !defined(JPEG_BUILDLINK3_MK)
JPEG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.jpeg+=	jpeg>=9b
BUILDLINK_PKGSRCDIR.jpeg?=	../../eliteraspberries/jpeg
.endif	# JPEG_BUILDLINK3_MK

BUILDLINK_TREE+=	-jpeg
