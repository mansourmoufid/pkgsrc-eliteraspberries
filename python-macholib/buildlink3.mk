# $NetBSD$

BUILDLINK_TREE+=	python-macholib

.if !defined(PYTHON_MACHOLIB_BUILDLINK3_MK)
PYTHON_MACHOLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-macholib+=	python-macholib>=1.9
BUILDLINK_PKGSRCDIR.python-macholib?=	../../eliteraspberries/python-macholib

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../eliteraspberries/python-altgraph/buildlink3.mk"
.endif	# PYTHON_MACHOLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-macholib
