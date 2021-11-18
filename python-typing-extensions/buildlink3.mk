# $NetBSD$

BUILDLINK_TREE+=	python-typing-extensions

.if !defined(PYTHON_TYPING_EXTENSIONS_BUILDLINK3_MK)
PYTHON_TYPING_EXTENSIONS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-typing-extensions+=	python-typing-extensions>=4.0.0
BUILDLINK_PKGSRCDIR.python-typing-extensions?=	../../eliteraspberries/python-typing-extensions

.include "../../eliteraspberries/python/buildlink3.mk"
.endif	# PYTHON_TYPING_EXTENSIONS_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-typing-extensions
