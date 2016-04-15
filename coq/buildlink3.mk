# $NetBSD$

BUILDLINK_TREE+=	coq

.if !defined(COQ_BUILDLINK3_MK)
COQ_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.coq+=	coq>=8.5
BUILDLINK_PKGSRCDIR.coq?=	../../eliteraspberries/coq

.include "../../eliteraspberries/camlp5/buildlink3.mk"
.include "../../eliteraspberries/ocaml/buildlink3.mk"
.endif	# COQ_BUILDLINK3_MK

BUILDLINK_TREE+=	-coq
