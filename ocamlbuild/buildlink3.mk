# $NetBSD$

BUILDLINK_TREE+=	ocamlbuild

.if !defined(OCAMLBUILD_BUILDLINK3_MK)
OCAMLBUILD_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.ocamlbuild?=	build

BUILDLINK_API_DEPENDS.ocamlbuild+=	ocamlbuild>=0.14.0
BUILDLINK_PKGSRCDIR.ocamlbuild?=	../../eliteraspberries/ocamlbuild

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.endif	# OCAMLBUILD_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocamlbuild
