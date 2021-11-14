# $NetBSD$

BUILDLINK_TREE+= python36

.if !defined(PYTHON36_BUILDLINK3_MK)
PYTHON36_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python36+= python36>=15
BUILDLINK_PKGSRCDIR.python36?= ../../eliteraspberries/python36

BUILDLINK_INCDIRS.python36+= include/python3.6

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/libffi/buildlink3.mk"
.include "../../eliteraspberries/ncurses/buildlink3.mk"
.include "../../eliteraspberries/readline/buildlink3.mk"
.include "../../eliteraspberries/tcl/buildlink3.mk"
.include "../../eliteraspberries/tk/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.endif # PYTHON36_BUILDLINK3_MK

BUILDLINK_TREE+= -python36
