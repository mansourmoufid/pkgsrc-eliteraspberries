# $NetBSD$

BUILDLINK_TREE+=	parmap

.if !defined(PARMAP_BUILDLINK3_MK)
PARMAP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.parmap+=	parmap>=1.0+rc7
BUILDLINK_PKGSRCDIR.parmap?=	../../eliteraspberries/parmap

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../devel/ocaml-findlib/buildlink3.mk"
.endif	# PARMAP_BUILDLINK3_MK

BUILDLINK_TREE+=	-parmap
