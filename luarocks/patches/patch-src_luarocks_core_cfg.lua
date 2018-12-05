$NetBSD$

--- src/luarocks/core/cfg.lua.orig	2018-12-05 15:46:41.000000000 -0500
+++ src/luarocks/core/cfg.lua	2018-12-05 15:47:32.000000000 -0500
@@ -424,17 +424,8 @@
       defaults.variables.LIBFLAG = "-bundle -undefined dynamic_lookup -all_load"
       defaults.variables.STAT = "/usr/bin/stat"
       defaults.variables.STATFLAG = "-f '%A'"
-      local version = util.popen_read("sw_vers -productVersion")
-      version = tonumber(version and version:match("^[^.]+%.([^.]+)")) or 3
-      if version >= 10 then
-         version = 8
-      elseif version >= 5 then
-         version = 5
-      else
-         defaults.gcc_rpath = false
-      end
-      defaults.variables.CC = "env MACOSX_DEPLOYMENT_TARGET=10."..version.." gcc"
-      defaults.variables.LD = "env MACOSX_DEPLOYMENT_TARGET=10."..version.." gcc"
+      defaults.variables.CC = "clang"
+      defaults.variables.LD = "clang"
       defaults.web_browser = "open"
    end
 
