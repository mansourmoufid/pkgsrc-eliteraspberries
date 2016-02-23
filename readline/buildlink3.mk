# $NetBSD$
# BUILDLINK_DEPMETHOD.readline?=	build

BUILDLINK_TREE+=	readline

.if !defined(READLINE_BUILDLINK3_MK)
READLINE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.readline+=	readline>=6.3
BUILDLINK_PKGSRCDIR.readline?=	../../eliteraspberries/readline

.include "../../eliteraspberries/ncurses/buildlink3.mk"
.endif	# READLINE_BUILDLINK3_MK

BUILDLINK_TREE+=	-readline
