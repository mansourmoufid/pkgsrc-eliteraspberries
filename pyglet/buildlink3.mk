# $NetBSD$

BUILDLINK_TREE+=	pyglet

.if !defined(PYGLET_BUILDLINK3_MK)
PYGLET_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pyglet+=	pyglet>=1.2.4
BUILDLINK_PKGSRCDIR.pyglet?=	../../eliteraspberries/pyglet

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYGLET_BUILDLINK3_MK

BUILDLINK_TREE+=	-pyglet
