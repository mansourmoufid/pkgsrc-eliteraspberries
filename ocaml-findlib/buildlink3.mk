# $NetBSD$

BUILDLINK_TREE+=	findlib

.if !defined(FINDLIB_BUILDLINK3_MK)
FINDLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.findlib+=	findlib>=1.6.1
BUILDLINK_PKGSRCDIR.findlib?=	../../eliteraspberries/ocaml-findlib

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.endif	# FINDLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-findlib
