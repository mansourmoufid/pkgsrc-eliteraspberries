# $NetBSD$

BUILDLINK_TREE+=	python-pyobjc-framework-CoreMedia

.if !defined(PYTHON_PYOBJC_FRAMEWORK_COREMEDIA_BUILDLINK3_MK)
PYTHON_PYOBJC_FRAMEWORK_COREMEDIA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-pyobjc-framework-CoreMedia+=	python-pyobjc-framework-CoreMedia>=8.0
BUILDLINK_PKGSRCDIR.python-pyobjc-framework-CoreMedia?=	../../eliteraspberries/python-pyobjc-framework-CoreMedia

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_PYOBJC_FRAMEWORK_COREMEDIA_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-pyobjc-framework-CoreMedia
