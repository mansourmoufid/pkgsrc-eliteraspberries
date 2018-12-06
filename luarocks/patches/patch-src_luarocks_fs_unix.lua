$NetBSD$

--- src/luarocks/fs/unix.lua.orig	2018-10-30 13:31:40.000000000 -0400
+++ src/luarocks/fs/unix.lua	2018-12-06 13:47:28.000000000 -0500
@@ -96,7 +96,7 @@
    end
 
    local argv = {
-      fs.Q(dir.path(cfg.variables["LUA_BINDIR"], cfg.lua_interpreter)),
+      fs.Q(cfg.lua_interpreter),
       script and fs.Q(script) or "",
       ...
    }
