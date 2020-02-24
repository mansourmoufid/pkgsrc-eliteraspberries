# $NetBSD$

BUILDLINK_TREE+=	ocaml-stdcompat

.if !defined(OCAML_STDCOMPAT_BUILDLINK3_MK)
OCAML_STDCOMPAT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-stdcompat+=	ocaml-stdcompat>=13
BUILDLINK_PKGSRCDIR.ocaml-stdcompat?=	../../eliteraspberries/ocaml-stdcompat

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.endif	# OCAML_STDCOMPAT_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-stdcompat
