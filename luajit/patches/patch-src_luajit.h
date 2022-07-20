--- src/luajit.h.orig	2022-07-20 12:16:59.000000000 -0400
+++ src/luajit.h	2022-07-20 12:17:27.000000000 -0400
@@ -30,9 +30,9 @@
 
 #include "lua.h"
 
-#define LUAJIT_VERSION		"LuaJIT 2.1.0-beta3"
+#define LUAJIT_VERSION		"LuaJIT 2.1.0"
 #define LUAJIT_VERSION_NUM	20100  /* Version 2.1.0 = 02.01.00. */
-#define LUAJIT_VERSION_SYM	luaJIT_version_2_1_0_beta3
+#define LUAJIT_VERSION_SYM	luaJIT_version_2_1_0
 #define LUAJIT_COPYRIGHT	"Copyright (C) 2005-2022 Mike Pall"
 #define LUAJIT_URL		"https://luajit.org/"
 
