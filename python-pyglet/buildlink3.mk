# $NetBSD$

BUILDLINK_TREE+=	python-pyglet

.if !defined(PYTHON_PYGLET_BUILDLINK3_MK)
PYTHON_PYGLET_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python-pyglet+=	python-pyglet>=1.2.4
BUILDLINK_PKGSRCDIR.python-pyglet?=	../../eliteraspberries/python-pyglet

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# PYTHON_PYGLET_BUILDLINK3_MK

BUILDLINK_TREE+=	-python-pyglet
