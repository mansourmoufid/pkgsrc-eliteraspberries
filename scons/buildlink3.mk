# $NetBSD$
# BUILDLINK_DEPMETHOD.scons?=	build

BUILDLINK_TREE+=	scons

.if !defined(SCONS_BUILDLINK3_MK)
SCONS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.scons+=	scons>=2.4.1
BUILDLINK_PKGSRCDIR.scons?=	../../eliteraspberries/scons

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# SCONS_BUILDLINK3_MK

BUILDLINK_TREE+=	-scons
