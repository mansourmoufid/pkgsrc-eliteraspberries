# $NetBSD$

BUILDLINK_TREE+=	ocaml

.if !defined(OCAML_BUILDLINK3_MK)
OCAML_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml+=	ocaml>=4.02.3
BUILDLINK_PKGSRCDIR.ocaml?=	../../eliteraspberries/ocaml
.endif	# OCAML_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml
