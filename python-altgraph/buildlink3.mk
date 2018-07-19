# $NetBSD$

BUILDLINK_TREE+=	python-altgraph

.if !defined(PYTHON_ALTGRAPH_BUILDLINK3_MK)
PYTHON_ALTGRAPH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-altgraph+=	python-altgraph>=0.15
BUILDLINK_PKGSRCDIR.python-altgraph?=	../../eliteraspberries/python-altgraph

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_ALTGRAPH_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-altgraph
