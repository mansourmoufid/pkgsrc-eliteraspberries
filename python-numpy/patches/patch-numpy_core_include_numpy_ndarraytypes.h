$NetBSD$

--- numpy/core/include/numpy/ndarraytypes.h.orig	2019-12-31 18:23:56.000000000 -0500
+++ numpy/core/include/numpy/ndarraytypes.h	2020-02-11 20:01:51.000000000 -0500
@@ -351,7 +351,7 @@
 
   /* Data buffer - PyDataMem_NEW/FREE/RENEW are in multiarraymodule.c */
 
-#define NPY_USE_PYMEM 1
+#define NPY_USE_PYMEM 0
 
 #if NPY_USE_PYMEM == 1
    /* numpy sometimes calls PyArray_malloc() with the GIL released. On Python
