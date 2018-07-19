# $NetBSD$

BUILDLINK_TREE+=	python-dis3

.if !defined(PYTHON_DIS3_BUILDLINK3_MK)
PYTHON_DIS3_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-dis3+=	python-dis3>=0.1.2
BUILDLINK_PKGSRCDIR.python-dis3?=	../../eliteraspberries/python-dis3

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_DIS3_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-dis3
