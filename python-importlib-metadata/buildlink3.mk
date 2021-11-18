# $NetBSD$

BUILDLINK_TREE+=	python-importlib-metadata

.if !defined(PYTHON_IMPORTLIB_METADATA_BUILDLINK3_MK)
PYTHON_IMPORTLIB_METADATA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-importlib-metadata+=	python-importlib-metadata>=4.8.2
BUILDLINK_PKGSRCDIR.python-importlib-metadata?=	../../eliteraspberries/python-importlib-metadata

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-typing-extensions/buildlink3.mk"
.include "../../eliteraspberries/python-zipp/buildlink3.mk"
.endif	# PYTHON_IMPORTLIB_METADATA_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-importlib-metadata
