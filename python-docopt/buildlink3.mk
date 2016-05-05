# $NetBSD$

BUILDLINK_TREE+=	python-docopt

.if !defined(PYTHON_DOCOPT_BUILDLINK3_MK)
PYTHON_DOCOPT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-docopt+=	python-docopt>=0.6.2
BUILDLINK_PKGSRCDIR.python-docopt?=	../../eliteraspberries/python-docopt

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_DOCOPT_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-docopt
