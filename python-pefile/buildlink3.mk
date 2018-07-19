# $NetBSD$

BUILDLINK_TREE+=	python-pefile

.if !defined(PYTHON_PEFILE_BUILDLINK3_MK)
PYTHON_PEFILE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-pefile+=	python-pefile>=2017.11.5
BUILDLINK_PKGSRCDIR.python-pefile?=	../../eliteraspberries/python-pefile

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-future/buildlink3.mk"
.endif	# PYTHON_PEFILE_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-pefile
