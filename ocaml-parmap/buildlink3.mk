# $NetBSD$

BUILDLINK_TREE+=	ocaml-parmap

.if !defined(OCAML_PARMAP_BUILDLINK3_MK)
OCAML_PARMAP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-parmap+=	ocaml-parmap>=1.1.1
BUILDLINK_PKGSRCDIR.ocaml-parmap?=	../../eliteraspberries/ocaml-parmap

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.endif	# OCAML_PARMAP_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-parmap
