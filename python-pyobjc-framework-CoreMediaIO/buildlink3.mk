# $NetBSD$

BUILDLINK_TREE+=	python-pyobjc-framework-CoreMediaIO

.if !defined(PYTHON_PYOBJC_FRAMEWORK_COREMEDIAIO_BUILDLINK3_MK)
PYTHON_PYOBJC_FRAMEWORK_COREMEDIAIO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-pyobjc-framework-CoreMediaIO+=	python-pyobjc-framework-CoreMediaIO>=8.0
BUILDLINK_PKGSRCDIR.python-pyobjc-framework-CoreMediaIO?=	../../eliteraspberries/python-pyobjc-framework-CoreMediaIO

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_PYOBJC_FRAMEWORK_COREMEDIAIO_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-pyobjc-framework-CoreMediaIO
