# $NetBSD$

BUILDLINK_TREE+=	jsoncpp

.if !defined(JSONCPP_BUILDLINK3_MK)
JSONCPP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.jsoncpp+=	jsoncpp>=1.9.1
BUILDLINK_PKGSRCDIR.jsoncpp?=	../../eliteraspberries/jsoncpp

.include "../../eliteraspberries/meson/buildlink3.mk"
.include "../../eliteraspberries/ninja/buildlink3.mk"
.endif	# JSONCPP_BUILDLINK3_MK

BUILDLINK_TREE+=	-jsoncpp
