# $NetBSD$
# BUILDLINK_DEPMETHOD.camlp5?=	build

BUILDLINK_TREE+=	camlp5

.if !defined(CAMLP5_BUILDLINK3_MK)
CAMLP5_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.camlp5+=	camlp5>=6.16
BUILDLINK_PKGSRCDIR.camlp5?=	../../eliteraspberries/camlp5

.include "../../eliteraspberries/ocaml/buildlink3.mk"
.endif	# CAMLP5_BUILDLINK3_MK

BUILDLINK_TREE+=	-camlp5
