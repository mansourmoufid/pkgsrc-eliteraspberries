# $NetBSD$

BUILDLINK_TREE+=	ocaml-camlp5

.if !defined(OCAML_CAMLP5_BUILDLINK3_MK)
OCAML_CAMLP5_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-camlp5+=	ocaml-camlp5>=7.11
BUILDLINK_PKGSRCDIR.ocaml-camlp5?=	../../eliteraspberries/ocaml-camlp5

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.endif	# OCAML_CAMLP5_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-camlp5
