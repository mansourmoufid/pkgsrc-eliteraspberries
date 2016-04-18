# $NetBSD$

BUILDLINK_TREE+=	numpy

.if !defined(NUMPY_BUILDLINK3_MK)
NUMPY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.numpy+=	numpy>=1.11.0
BUILDLINK_PKGSRCDIR.numpy?=	../../eliteraspberries/numpy

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# NUMPY_BUILDLINK3_MK

BUILDLINK_TREE+=	-numpy
