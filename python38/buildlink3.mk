# $NetBSD$

BUILDLINK_TREE+= python38

.if !defined(PYTHON38_BUILDLINK3_MK)
PYTHON38_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python38+= python38>=13
BUILDLINK_PKGSRCDIR.python38?= ../../eliteraspberries/python38

BUILDLINK_INCDIRS.python38+= include/python3.8

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/libffi/buildlink3.mk"
.include "../../eliteraspberries/ncurses/buildlink3.mk"
.include "../../eliteraspberries/readline/buildlink3.mk"
.include "../../eliteraspberries/tcl/buildlink3.mk"
.include "../../eliteraspberries/tk/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.endif # PYTHON38_BUILDLINK3_MK

BUILDLINK_TREE+= -python38
