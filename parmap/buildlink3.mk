# $NetBSD$

BUILDLINK_TREE+=	parmap

.if !defined(PARMAP_BUILDLINK3_MK)
PARMAP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.parmap+=	parmap>=1.0rc7nb4
BUILDLINK_PKGSRCDIR.parmap?=	../../eliteraspberries/parmap

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.endif	# PARMAP_BUILDLINK3_MK

BUILDLINK_TREE+=	-parmap
