# $NetBSD$
# BUILDLINK_DEPMETHOD.ncurses?=	build

BUILDLINK_TREE+=	ncurses

.if !defined(NCURSES_BUILDLINK3_MK)
NCURSES_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ncurses+=	ncurses>=6.0nb1
BUILDLINK_PKGSRCDIR.ncurses?=	../../eliteraspberries/ncurses
.endif	# NCURSES_BUILDLINK3_MK

BUILDLINK_TREE+=	-ncurses
