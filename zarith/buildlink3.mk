# $NetBSD$

BUILDLINK_TREE+=	zarith

.if !defined(ZARITH_BUILDLINK3_MK)
ZARITH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.zarith+=	zarith>=1.4.1
BUILDLINK_PKGSRCDIR.zarith?=	../../eliteraspberries/zarith

.include "../../devel/gmp/buildlink3.mk"
.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../devel/ocaml-findlib/buildlink3.mk"
.endif	# ZARITH_BUILDLINK3_MK

BUILDLINK_TREE+=	-zarith
