# $NetBSD$

BUILDLINK_TREE+=	ocaml-findlib

.if !defined(OCAML_FINDLIB_BUILDLINK3_MK)
OCAML_FINDLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-findlib+=	ocaml-findlib>=1.6.1nb4
BUILDLINK_PKGSRCDIR.ocaml-findlib?=	../../eliteraspberries/ocaml-findlib

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.endif	# OCAML_FINDLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-findlib
