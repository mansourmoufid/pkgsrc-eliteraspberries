$NetBSD$

--- src/luaconf.h.orig	2017-04-19 13:29:57.000000000 -0400
+++ src/luaconf.h	2018-12-07 17:05:58.000000000 -0500
@@ -200,9 +200,14 @@
 
 #else			/* }{ */
 
-#define LUA_ROOT	"/usr/local/"
-#define LUA_LDIR	LUA_ROOT "share/lua/" LUA_VDIR "/"
-#define LUA_CDIR	LUA_ROOT "lib/lua/" LUA_VDIR "/"
+#define _LUA_STRING(x)	#x
+#define LUA_STRING(x)	_LUA_STRING(x)
+
+#ifndef LUA_ROOT
+#define LUA_ROOT	/usr/local
+#endif
+#define LUA_LDIR	LUA_STRING(LUA_ROOT) "/share/lua/" LUA_VDIR "/"
+#define LUA_CDIR	LUA_STRING(LUA_ROOT) "/lib/lua/" LUA_VDIR "/"
 #define LUA_PATH_DEFAULT  \
 		LUA_LDIR"?.lua;"  LUA_LDIR"?/init.lua;" \
 		LUA_CDIR"?.lua;"  LUA_CDIR"?/init.lua;" \
