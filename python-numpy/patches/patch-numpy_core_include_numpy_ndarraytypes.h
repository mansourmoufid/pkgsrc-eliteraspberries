$NetBSD$

--- numpy/core/include/numpy/ndarraytypes.h.orig	2017-06-17 14:20:23.000000000 -0400
+++ numpy/core/include/numpy/ndarraytypes.h	2017-06-17 14:21:02.000000000 -0400
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
