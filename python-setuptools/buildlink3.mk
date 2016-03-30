# $NetBSD$
# BUILDLINK_DEPMETHOD.python-setuptools?=	build

BUILDLINK_TREE+=	python-setuptools

.if !defined(PYTHON_SETUPTOOLS_BUILDLINK3_MK)
PYTHON_SETUPTOOLS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-setuptools+=	python-setuptools>=20.4
BUILDLINK_PKGSRCDIR.python-setuptools?=	../../eliteraspberries/python-setuptools

.include "../../eliteraspberries/python/buildlink3.mk"
.endif	# PYTHON_SETUPTOOLS_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-setuptools
