# $NetBSD$
# BUILDLINK_DEPMETHOD.camlp4?=	build

BUILDLINK_TREE+=	camlp4

.if !defined(CAMLP4_BUILDLINK3_MK)
CAMLP4_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.camlp4+=	camlp4>=4.02.7
BUILDLINK_PKGSRCDIR.camlp4?=	../../eliteraspberries/camlp4

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.include "../../eliteraspberries/ocaml-findlib/buildlink3.mk"
.endif	# CAMLP4_BUILDLINK3_MK

BUILDLINK_TREE+=	-camlp4
