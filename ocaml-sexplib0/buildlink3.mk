# $NetBSD$

BUILDLINK_TREE+=	ocaml-sexplib0

.if !defined(OCAML_SEXPLIB0_BUILDLINK3_MK)
OCAML_SEXPLIB0_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-sexplib0+=	ocaml-sexplib0>=0.13.0
BUILDLINK_PKGSRCDIR.ocaml-sexplib0?=	../../eliteraspberries/ocaml-sexplib0

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.endif	# OCAML_SEXPLIB0_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-sexplib0
