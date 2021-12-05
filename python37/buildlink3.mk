# $NetBSD$

BUILDLINK_TREE+= python37

.if !defined(PYTHON37_BUILDLINK3_MK)
PYTHON37_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python37+= python37>=12
BUILDLINK_PKGSRCDIR.python37?= ../../eliteraspberries/python37

BUILDLINK_INCDIRS.python37+= include/python3.7

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/libffi/buildlink3.mk"
.include "../../eliteraspberries/ncurses/buildlink3.mk"
.include "../../eliteraspberries/readline/buildlink3.mk"
.include "../../eliteraspberries/tcl/buildlink3.mk"
.include "../../eliteraspberries/tk/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.endif # PYTHON37_BUILDLINK3_MK

BUILDLINK_TREE+= -python37
