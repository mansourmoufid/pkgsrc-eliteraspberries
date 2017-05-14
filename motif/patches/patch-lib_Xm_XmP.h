$NetBSD$

--- lib/Xm/XmP.h.orig	2017-05-14 09:44:49.000000000 -0400
+++ lib/Xm/XmP.h	2017-05-14 09:45:02.000000000 -0400
@@ -1437,13 +1437,8 @@
 
 #endif /* NO_XM_1_2_BC */
 
-#if __GNUC__
-#  define XM_DEPRECATED  __attribute__((__deprecated__))
-#  define XM_ALIAS(sym)  __attribute__((__weak__,alias(#sym)))
-#else
-#  define XM_DEPRECATED
-#  define XM_ALIAS(sym)
-#endif
+#define XM_DEPRECATED
+#define XM_ALIAS(sym)
 
 #define FIX_1381
 
