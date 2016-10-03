# $NetBSD$

BUILDLINK_TREE+=	mbedtls

.if !defined(MBEDTLS_BUILDLINK3_MK)
MBEDTLS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mbedtls+=	mbedtls>=2.3.0
BUILDLINK_PKGSRCDIR.mbedtls?=	../../eliteraspberries/mbedtls
.endif	# MBEDTLS_BUILDLINK3_MK

BUILDLINK_INCDIRS.mbedtls+=	include/mbedtls

BUILDLINK_TREE+=	-mbedtls
