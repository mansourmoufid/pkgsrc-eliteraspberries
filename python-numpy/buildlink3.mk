# $NetBSD$

BUILDLINK_TREE+=	python-numpy

.if !defined(PYTHON_NUMPY_BUILDLINK3_MK)
PYTHON_NUMPY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-numpy+=	python-numpy>=1.11.0
BUILDLINK_PKGSRCDIR.python-numpy?=	../../eliteraspberries/python-numpy

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_NUMPY_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-numpy
