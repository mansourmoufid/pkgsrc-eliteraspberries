# $NetBSD$

BUILDLINK_TREE+=	meson

.if !defined(MESON_BUILDLINK3_MK)
MESON_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.meson?=	build

BUILDLINK_API_DEPENDS.meson+=	meson>=0.53.1
BUILDLINK_PKGSRCDIR.meson?=	../../eliteraspberries/meson

.include "../../eliteraspberries/ninja/buildlink3.mk"
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# MESON_BUILDLINK3_MK

BUILDLINK_TREE+=	-meson
