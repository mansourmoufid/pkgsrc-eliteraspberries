# $NetBSD$

BUILDLINK_TREE+=	tk

.if !defined(TK_BUILDLINK3_MK)
TK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.tk+=	tk>=8.6.4nb3
BUILDLINK_PKGSRCDIR.tk?=	../../eliteraspberries/tk

.include "../../eliteraspberries/tcl/buildlink3.mk"
.endif	# TK_BUILDLINK3_MK

BUILDLINK_TREE+=	-tk
