# $NetBSD$

BUILDLINK_TREE+=	pyinstaller-hooks-contrib

.if !defined(PYINSTALLER_HOOKS_CONTRIB_BUILDLINK3_MK)
PYINSTALLER_HOOKS_CONTRIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pyinstaller-hooks-contrib+=	pyinstaller-hooks-contrib>=2021.3
BUILDLINK_PKGSRCDIR.pyinstaller-hooks-contrib?=	../../eliteraspberries/pyinstaller-hooks-contrib

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYINSTALLER_HOOKS_CONTRIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-pyinstaller-hooks-contrib
