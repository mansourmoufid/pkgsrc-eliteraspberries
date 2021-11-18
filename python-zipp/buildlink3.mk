# $NetBSD$

BUILDLINK_TREE+=	python-zipp

.if !defined(PYTHON_ZIPP_BUILDLINK3_MK)
PYTHON_ZIPP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-zipp+=	python-zipp>=3.6.0
BUILDLINK_PKGSRCDIR.python-zipp?=	../../eliteraspberries/python-zipp

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_ZIPP_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-zipp
