# $NetBSD$

BUILDLINK_TREE+=	python-pyobjc-framework-Cocoa

.if !defined(PYTHON_PYOBJC_FRAMEWORK_COCOA_BUILDLINK3_MK)
PYTHON_PYOBJC_FRAMEWORK_COCOA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-pyobjc-framework-Cocoa+=	python-pyobjc-framework-Cocoa>=5.3
BUILDLINK_PKGSRCDIR.python-pyobjc-framework-Cocoa?=	../../eliteraspberries/python-pyobjc-framework-Cocoa

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_PYOBJC_FRAMEWORK_COCOA_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-pyobjc-framework-Cocoa
