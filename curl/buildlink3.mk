# $NetBSD$

BUILDLINK_TREE+=	curl

.if !defined(CURL_BUILDLINK3_MK)
CURL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.curl+=	curl>=7.48.0
BUILDLINK_PKGSRCDIR.curl?=	../../eliteraspberries/curl
.endif	# CURL_BUILDLINK3_MK

BUILDLINK_TREE+=	-curl
