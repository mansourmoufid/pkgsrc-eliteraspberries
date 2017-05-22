$NetBSD$

--- Include/Python.h.orig	2017-05-21 16:41:27.000000000 -0400
+++ Include/Python.h	2017-05-21 16:41:41.000000000 -0400
@@ -167,7 +167,7 @@
 #endif
 
 /* Define macros for inline documentation. */
-#define PyDoc_VAR(name) static char name[]
+#define PyDoc_VAR(name) static const char name[]
 #define PyDoc_STRVAR(name,str) PyDoc_VAR(name) = PyDoc_STR(str)
 #ifdef WITH_DOC_STRINGS
 #define PyDoc_STR(str) str
