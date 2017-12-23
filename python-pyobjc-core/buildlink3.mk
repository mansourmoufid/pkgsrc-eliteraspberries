# $NetBSD$

BUILDLINK_TREE+=	python-pyobjc-core

.if !defined(PYTHON_PYOBJC_CORE_BUILDLINK3_MK)
PYTHON_PYOBJC_CORE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-pyobjc-core+=	python-pyobjc-core>=4.1
BUILDLINK_PKGSRCDIR.python-pyobjc-core?=	../../eliteraspberries/python-pyobjc-core

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_PYOBJC_CORE_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-pyobjc-core
