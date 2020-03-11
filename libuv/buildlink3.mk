# $NetBSD$

BUILDLINK_TREE+=	libuv

.if !defined(LIBUV_BUILDLINK3_MK)
LIBUV_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libuv+=	libuv>=1.34.2
BUILDLINK_PKGSRCDIR.libuv?=	../../eliteraspberries/libuv
.endif	# LIBUV_BUILDLINK3_MK

BUILDLINK_TREE+=	-libuv
