# $NetBSD$
# BUILDLINK_DEPMETHOD.python-wheel?=	build

BUILDLINK_TREE+=	python-wheel

.if !defined(PYTHON_WHEEL_BUILDLINK3_MK)
PYTHON_WHEEL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-wheel+=	python-wheel>=0.29.0
BUILDLINK_PKGSRCDIR.python-wheel?=	../../eliteraspberries/python-wheel

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_WHEEL_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-wheel
