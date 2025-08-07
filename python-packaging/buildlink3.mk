# $NetBSD$

BUILDLINK_TREE+=	python-packaging

.if !defined(PYTHON_PACKAGING_BUILDLINK3_MK)
PYTHON_PACKAGING_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.python-packaging?=	build

BUILDLINK_API_DEPENDS.python-packaging+=	python-packaging>=23.2
BUILDLINK_PKGSRCDIR.python-packaging?=	../../eliteraspberries/python-packaging

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-pip/buildlink3.mk"
.endif	# PYTHON_PACKAGING_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-packaging
