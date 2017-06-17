$NetBSD$

--- numpy/core/src/multiarray/shape.c.orig	2016-03-27 11:25:31.000000000 -0400
+++ numpy/core/src/multiarray/shape.c	2017-06-15 10:54:48.000000000 -0400
@@ -37,8 +37,7 @@
 PyArray_Resize(PyArrayObject *self, PyArray_Dims *newshape, int refcheck,
                NPY_ORDER order)
 {
-    npy_intp oldsize, newsize;
-    int new_nd=newshape->len, k, n, elsize;
+    size_t oldsize, newsize, new_nd = newshape->len, k, n, elsize;
     int refcnt;
     npy_intp* new_dimensions=newshape->ptr;
     npy_intp new_strides[NPY_MAXDIMS];
@@ -69,10 +68,10 @@
                     "negative dimensions not allowed");
             return NULL;
         }
-        newsize *= new_dimensions[k];
-        if (newsize <= 0 || newsize > largest) {
+        if (newsize > largest / new_dimensions[k]) {
             return PyErr_NoMemory();
         }
+        newsize *= new_dimensions[k];
     }
     oldsize = PyArray_SIZE(self);
 
