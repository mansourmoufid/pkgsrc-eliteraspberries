# $NetBSD$

BUILDLINK_TREE+=	ninja

.if !defined(NINJA_BUILDLINK3_MK)
NINJA_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.ninja?=	build

BUILDLINK_API_DEPENDS.ninja+=	ninja>=1.10.0
BUILDLINK_PKGSRCDIR.ninja?=	../../eliteraspberries/ninja
.endif	# NINJA_BUILDLINK3_MK

BUILDLINK_TREE+=	-ninja
