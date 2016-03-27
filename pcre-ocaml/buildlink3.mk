# $NetBSD$

BUILDLINK_TREE+=	pcre-ocaml

.if !defined(PCRE_OCAML_BUILDLINK3_MK)
PCRE_OCAML_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pcre-ocaml+=	pcre-ocaml>=7.2.2
BUILDLINK_PKGSRCDIR.pcre-ocaml?=	../../eliteraspberries/pcre-ocaml

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.endif	# PCRE_OCAML_BUILDLINK3_MK

BUILDLINK_TREE+=	-pcre-ocaml
