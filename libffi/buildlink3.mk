# $NetBSD$
# BUILDLINK_DEPMETHOD.libffi?=	build

BUILDLINK_TREE+=	libffi

.if !defined(LIBFFI_BUILDLINK3_MK)
LIBFFI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libffi+=	libffi>=3.2.1
BUILDLINK_PKGSRCDIR.libffi?=	../../eliteraspberries/libffi
.endif	# LIBFFI_BUILDLINK3_MK

BUILDLINK_TREE+=	-libffi
