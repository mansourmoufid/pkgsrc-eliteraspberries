# $NetBSD$

BUILDLINK_TREE+=	ocaml-menhir

.if !defined(OCAML_MENHIR_BUILDLINK3_MK)
OCAML_MENHIR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-menhir+=	ocaml-menhir>=20190924
BUILDLINK_PKGSRCDIR.ocaml-menhir?=	../../eliteraspberries/ocaml-menhir

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocamlbuild/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.endif	# OCAML_MENHIR_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-menhir
