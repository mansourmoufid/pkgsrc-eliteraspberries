# $NetBSD$

BUILDLINK_TREE+=	python-pyobjc-framework-Quartz

.if !defined(PYTHON_PYOBJC_FRAMEWORK_QUARTZ_BUILDLINK3_MK)
PYTHON_PYOBJC_FRAMEWORK_QUARTZ_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-pyobjc-framework-Quartz+=	python-pyobjc-framework-Quartz>=5.3
BUILDLINK_PKGSRCDIR.python-pyobjc-framework-Quartz?=	../../eliteraspberries/python-pyobjc-framework-Quartz

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_PYOBJC_FRAMEWORK_QUARTZ_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-pyobjc-framework-Quartz
