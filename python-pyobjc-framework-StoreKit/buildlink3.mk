# $NetBSD$

BUILDLINK_TREE+=	python-pyobjc-framework-StoreKit

.if !defined(PYTHON_PYOBJC_FRAMEWORK_STOREKIT_BUILDLINK3_MK)
PYTHON_PYOBJC_FRAMEWORK_STOREKIT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-pyobjc-framework-StoreKit+=	python-pyobjc-framework-StoreKit>=5.3
BUILDLINK_PKGSRCDIR.python-pyobjc-framework-StoreKit?=	../../eliteraspberries/python-pyobjc-framework-StoreKit

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_PYOBJC_FRAMEWORK_STOREKIT_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-pyobjc-framework-StoreKit
