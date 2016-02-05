# $NetBSD$

BUILDLINK_TREE+=	gmp

.if !defined(GMP_BUILDLINK3_MK)
GMP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gmp+=	gmp>=6.1.0nb2
BUILDLINK_PKGSRCDIR.gmp?=	../../eliteraspberries/gmp
.endif	# GMP_BUILDLINK3_MK

BUILDLINK_TREE+=	-gmp
