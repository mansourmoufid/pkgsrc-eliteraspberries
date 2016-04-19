# $NetBSD$
# BUILDLINK_DEPMETHOD.cython?=	build

BUILDLINK_TREE+=	cython

.if !defined(CYTHON_BUILDLINK3_MK)
CYTHON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cython+=	cython>=0.24
BUILDLINK_PKGSRCDIR.cython?=	../../eliteraspberries/cython

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# CYTHON_BUILDLINK3_MK

BUILDLINK_TREE+=	-cython
