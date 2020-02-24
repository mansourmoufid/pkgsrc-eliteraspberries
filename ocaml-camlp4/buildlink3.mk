# $NetBSD$

BUILDLINK_TREE+=	ocaml-camlp4

.if !defined(OCAML_CAMLP4_BUILDLINK3_MK)
OCAML_CAMLP4_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-camlp4+=	ocaml-camlp4>=4.08.1
BUILDLINK_PKGSRCDIR.ocaml-camlp4?=	../../eliteraspberries/ocaml-camlp4

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocamlbuild/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.endif	# OCAML_CAMLP4_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-camlp4
