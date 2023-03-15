# $NetBSD$

BUILDLINK_TREE+=	python-pyobjc-framework-IOSurface

.if !defined(PYTHON_PYOBJC_FRAMEWORK_IOSURFACE_BUILDLINK3_MK)
PYTHON_PYOBJC_FRAMEWORK_IOSURFACE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-pyobjc-framework-IOSurface+=	python-pyobjc-framework-IOSurface>=5.3
BUILDLINK_PKGSRCDIR.python-pyobjc-framework-IOSurface?=	../../eliteraspberries/python-pyobjc-framework-IOSurface

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_PYOBJC_FRAMEWORK_IOSURFACE_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-pyobjc-framework-IOSurface
