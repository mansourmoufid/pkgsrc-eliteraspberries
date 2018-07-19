# $NetBSD$

BUILDLINK_TREE+=	python-future

.if !defined(PYTHON_FUTURE_BUILDLINK3_MK)
PYTHON_FUTURE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-future+=	python-future>=0.16.0
BUILDLINK_PKGSRCDIR.python-future?=	../../eliteraspberries/python-future

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_FUTURE_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-future
