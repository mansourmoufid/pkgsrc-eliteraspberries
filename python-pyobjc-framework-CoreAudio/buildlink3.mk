# $NetBSD$

BUILDLINK_TREE+=	python-pyobjc-framework-CoreAudio

.if !defined(PYTHON_PYOBJC_FRAMEWORK_COREAUDIO_BUILDLINK3_MK)
PYTHON_PYOBJC_FRAMEWORK_COREAUDIO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-pyobjc-framework-CoreAudio+=	python-pyobjc-framework-CoreAudio>=8.0
BUILDLINK_PKGSRCDIR.python-pyobjc-framework-CoreAudio?=	../../eliteraspberries/python-pyobjc-framework-CoreAudio

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_PYOBJC_FRAMEWORK_COREAUDIO_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-pyobjc-framework-CoreAudio
