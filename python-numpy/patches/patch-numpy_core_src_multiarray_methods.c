$NetBSD$

--- numpy/core/src/multiarray/methods.c.orig	2017-06-17 11:45:33.000000000 -0400
+++ numpy/core/src/multiarray/methods.c	2017-06-17 11:46:28.000000000 -0400
@@ -1684,7 +1684,7 @@
     }
 
     if ((PyArray_FLAGS(self) & NPY_ARRAY_OWNDATA)) {
-        PyDataMem_FREE(PyArray_DATA(self));
+        PyDataMem_FREE(fa->data);
         PyArray_CLEARFLAGS(self, NPY_ARRAY_OWNDATA);
     }
     Py_XDECREF(PyArray_BASE(self));
