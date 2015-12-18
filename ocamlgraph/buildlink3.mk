# $NetBSD$

BUILDLINK_TREE+=	ocamlgraph

.if !defined(OCAMLGRAPH_BUILDLINK3_MK)
OCAMLGRAPH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocamlgraph+=	ocamlgraph>=1.8.6
BUILDLINK_PKGSRCDIR.ocamlgraph?=	../../eliteraspberries/ocamlgraph

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../devel/ocaml-findlib/buildlink3.mk"
.endif	# OCAMLGRAPH_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocamlgraph
