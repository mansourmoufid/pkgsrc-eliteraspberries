# $NetBSD$

BUILDLINK_TREE+=	python

.if !defined(PYTHON_BUILDLINK3_MK)
PYTHON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python+=	python>=2.7.11nb2
BUILDLINK_PKGSRCDIR.python?=	../../eliteraspberries/python

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/libffi/buildlink3.mk"
.include "../../eliteraspberries/ncurses/buildlink3.mk"
.include "../../eliteraspberries/readline/buildlink3.mk"
.include "../../eliteraspberries/tcl/buildlink3.mk"
.include "../../eliteraspberries/tk/buildlink3.mk"
.endif	# PYTHON_BUILDLINK3_MK

BUILDLINK_TREE+=	-python
