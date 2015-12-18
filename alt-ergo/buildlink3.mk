# $NetBSD$

BUILDLINK_TREE+=	alt-ergo

.if !defined(ALT_ERGO_BUILDLINK3_MK)
ALT_ERGO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.alt-ergo+=	alt-ergo>=0.99.1
BUILDLINK_PKGSRCDIR.alt-ergo?=	../../eliteraspberries/alt-ergo

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/zarith/buildlink3.mk"
.include "../../eliteraspberries/ocamlgraph/buildlink3.mk"
.endif	# ALT_ERGO_BUILDLINK3_MK

BUILDLINK_TREE+=	-alt-ergo
