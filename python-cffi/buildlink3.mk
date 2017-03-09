# $NetBSD$

BUILDLINK_TREE+=	python-cffi

.if !defined(PYTHON_CFFI_BUILDLINK3_MK)
PYTHON_CFFI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-cffi+=	python-cffi>=1.9.1
BUILDLINK_PKGSRCDIR.python-cffi?=	../../eliteraspberries/python-cffi

.include "../../eliteraspberries/libffi/buildlink3.mk"
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-pycparser/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_CFFI_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-cffi
