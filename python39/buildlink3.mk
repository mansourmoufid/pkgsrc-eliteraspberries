# $NetBSD$

BUILDLINK_TREE+= python39

.if !defined(PYTHON39_BUILDLINK3_MK)
PYTHON39_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python39+= python39>=23
BUILDLINK_PKGSRCDIR.python39?= ../../eliteraspberries/python39

BUILDLINK_INCDIRS.python39+= include/python3.9

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
.endif # PYTHON39_BUILDLINK3_MK

BUILDLINK_TREE+= -python39
