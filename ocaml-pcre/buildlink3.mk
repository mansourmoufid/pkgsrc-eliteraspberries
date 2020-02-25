# $NetBSD$

BUILDLINK_TREE+=	ocaml-pcre

.if !defined(OCAML_PCRE_BUILDLINK3_MK)
OCAML_PCRE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-pcre+=	ocaml-pcre>=7.4.3
BUILDLINK_PKGSRCDIR.ocaml-pcre?=	../../eliteraspberries/ocaml-pcre

.include "../../devel/pcre/buildlink3.mk"
.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-base/buildlink3.mk"
.endif	# OCAML_PCRE_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-pcre
