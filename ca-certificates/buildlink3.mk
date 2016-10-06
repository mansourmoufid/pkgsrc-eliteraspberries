# $NetBSD$

BUILDLINK_TREE+=	ca-certificates

.if !defined(CA_CERTIFICATES_BUILDLINK3_MK)
CA_CERTIFICATES_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ca-certificates+=	ca-certificates>=20161003
BUILDLINK_PKGSRCDIR.ca-certificates?=	../../eliteraspberries/ca-certificates
.endif	# CA_CERTIFICATES_BUILDLINK3_MK

BUILDLINK_TREE+=	-ca-certificates
