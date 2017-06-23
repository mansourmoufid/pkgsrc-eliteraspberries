$NetBSD$

--- numpy/core/include/numpy/ndarraytypes.h.orig	2016-03-27 11:25:31.000000000 -0400
+++ numpy/core/include/numpy/ndarraytypes.h	2017-06-20 14:15:24.000000000 -0400
@@ -325,7 +325,7 @@
 
   /* Data buffer - PyDataMem_NEW/FREE/RENEW are in multiarraymodule.c */
 
-#define NPY_USE_PYMEM 1
+#define NPY_USE_PYMEM 0
 
 #if NPY_USE_PYMEM == 1
 #define PyArray_malloc PyMem_Malloc
@@ -640,9 +640,9 @@
 typedef struct tagPyArrayObject_fields {
     PyObject_HEAD
     /* Pointer to the raw data buffer */
-    char *data;
+    void *data;
     /* The number of dimensions, also called 'ndim' */
-    int nd;
+    npy_intp nd;
     /* The size in each dimension, also called 'shape' */
     npy_intp *dimensions;
     /*
