# $NetBSD$

BUILDLINK_TREE+=	rhash

.if !defined(RHASH_BUILDLINK3_MK)
RHASH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.rhash+=	rhash>=1.3.9
BUILDLINK_PKGSRCDIR.rhash?=	../../eliteraspberries/rhash
.endif	# RHASH_BUILDLINK3_MK

BUILDLINK_TREE+=	-rhash
