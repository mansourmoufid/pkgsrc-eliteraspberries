$NetBSD$

--- numpy/core/src/multiarray/shape.c.orig	2016-03-27 11:25:31.000000000 -0400
+++ numpy/core/src/multiarray/shape.c	2017-04-04 16:27:34.000000000 -0400
@@ -37,15 +37,15 @@
 PyArray_Resize(PyArrayObject *self, PyArray_Dims *newshape, int refcheck,
                NPY_ORDER order)
 {
-    npy_intp oldsize, newsize;
-    int new_nd=newshape->len, k, n, elsize;
+    npy_intp oldsize;
+    int new_nd=newshape->len;
     int refcnt;
     npy_intp* new_dimensions=newshape->ptr;
     npy_intp new_strides[NPY_MAXDIMS];
-    size_t sd;
     npy_intp *dimptr;
     char *new_data;
     npy_intp largest;
+    size_t k, n, elsize, newsize, sd;
 
     if (!PyArray_ISONESEGMENT(self)) {
         PyErr_SetString(PyExc_ValueError,
@@ -70,7 +70,7 @@
             return NULL;
         }
         newsize *= new_dimensions[k];
-        if (newsize <= 0 || newsize > largest) {
+        if (newsize > largest) {
             return PyErr_NoMemory();
         }
     }
