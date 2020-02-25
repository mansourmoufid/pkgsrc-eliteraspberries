# $NetBSD$

BUILDLINK_TREE+=	ocaml-base

.if !defined(OCAML_BASE_BUILDLINK3_MK)
OCAML_BASE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-base+=	ocaml-base>=0.13.0
BUILDLINK_PKGSRCDIR.ocaml-base?=	../../eliteraspberries/ocaml-base

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-sexplib0/buildlink3.mk"
.endif	# OCAML_BASE_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-base
