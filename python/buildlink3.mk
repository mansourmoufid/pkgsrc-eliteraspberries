# $NetBSD$

BUILDLINK_TREE+= python

.if !defined(PYTHON_BUILDLINK3_MK)
PYTHON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python+= python>=3
BUILDLINK_PKGSRCDIR.python?= ../../eliteraspberries/python

.include "../../eliteraspberries/python36/buildlink3.mk"

.endif # PYTHON_BUILDLINK3_MK

BUILDLINK_TREE+= -python
