# $NetBSD$

BUILDLINK_TREE+=	menhir

.if !defined(MENHIR_BUILDLINK3_MK)
MENHIR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.menhir+=	menhir>=20151112
BUILDLINK_PKGSRCDIR.menhir?=	../../eliteraspberries/menhir

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../devel/ocaml-findlib/buildlink3.mk"
.endif	# MENHIR_BUILDLINK3_MK

BUILDLINK_TREE+=	-menhir
