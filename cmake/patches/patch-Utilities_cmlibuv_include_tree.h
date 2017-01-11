--- Utilities/cmlibuv/include/tree.h.orig	2017-01-18 20:02:12.000000000 -0500
+++ Utilities/cmlibuv/include/tree.h	2017-01-18 20:02:57.000000000 -0500
@@ -326,7 +326,8 @@
 
 #define RB_SET(elm, parent, field) do {                                       \
   RB_PARENT(elm, field) = parent;                                             \
-  RB_LEFT(elm, field) = RB_RIGHT(elm, field) = NULL;                          \
+  RB_LEFT(elm, field) = NULL;                                                 \
+  RB_RIGHT(elm, field) = NULL;                                                \
   RB_COLOR(elm, field) = RB_RED;                                              \
 } while (/*CONSTCOND*/ 0)
 
