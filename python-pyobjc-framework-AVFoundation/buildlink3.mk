# $NetBSD$

BUILDLINK_TREE+=	python-pyobjc-framework-AVFoundation

.if !defined(PYTHON_PYOBJC_FRAMEWORK_AVFOUNDATION_BUILDLINK3_MK)
PYTHON_PYOBJC_FRAMEWORK_AVFOUNDATION_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-pyobjc-framework-AVFoundation+=	python-pyobjc-framework-AVFoundation>=8.0
BUILDLINK_PKGSRCDIR.python-pyobjc-framework-AVFoundation?=	../../eliteraspberries/python-pyobjc-framework-AVFoundation

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-pyobjc-framework-CoreAudio/buildlink3.mk"
.include "../../eliteraspberries/python-pyobjc-framework-CoreMedia/buildlink3.mk"
.endif	# PYTHON_PYOBJC_FRAMEWORK_AVFOUNDATION_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-pyobjc-framework-AVFoundation
