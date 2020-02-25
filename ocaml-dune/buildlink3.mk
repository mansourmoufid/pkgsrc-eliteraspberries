# $NetBSD$

BUILDLINK_TREE+=	ocaml-dune

.if !defined(OCAML_DUNE_BUILDLINK3_MK)
OCAML_DUNE_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.ocaml-dune?=	build

BUILDLINK_API_DEPENDS.ocaml-dune+=	ocaml-dune>=2.3.1
BUILDLINK_PKGSRCDIR.ocaml-dune?=	../../eliteraspberries/ocaml-dune

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.endif	# OCAML_DUNE_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-dune
