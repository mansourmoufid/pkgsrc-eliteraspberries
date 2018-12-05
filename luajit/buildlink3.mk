# $NetBSD$

BUILDLINK_TREE+=	luajit

.if !defined(LUAJIT_BUILDLINK3_MK)
LUAJIT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.luajit+=	luajit>=2.0.5
BUILDLINK_PKGSRCDIR.luajit?=	../../eliteraspberries/luajit
.endif	# LUAJIT_BUILDLINK3_MK

BUILDLINK_TREE+=	-luajit
