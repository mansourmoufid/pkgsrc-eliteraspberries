# $NetBSD$

BUILDLINK_TREE+=	python-pycparser

.if !defined(PYTHON_PYCPARSER_BUILDLINK3_MK)
PYTHON_PYCPARSER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-pycparser+=	python-pycparser>=2.17
BUILDLINK_PKGSRCDIR.python-pycparser?=	../../eliteraspberries/python-pycparser

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_PYCPARSER_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-pycparser
