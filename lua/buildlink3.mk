# $NetBSD$

BUILDLINK_TREE+=	lua

.if !defined(LUA_BUILDLINK3_MK)
LUA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.lua+=	lua>=5.3.5
BUILDLINK_PKGSRCDIR.lua?=	../../eliteraspberries/lua

.endif	# LUA_BUILDLINK3_MK

BUILDLINK_TREE+=	-lua
