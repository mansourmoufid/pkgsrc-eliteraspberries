$NetBSD$

--- numpy/core/src/multiarray/getset.c.orig	2017-06-17 11:41:36.000000000 -0400
+++ numpy/core/src/multiarray/getset.c	2017-06-17 11:44:23.000000000 -0400
@@ -331,6 +331,7 @@
     void *buf;
     Py_ssize_t buf_len;
     int writeable=1;
+    PyArrayObject_fields *fa = (PyArrayObject_fields *)self;
 
     if (op == NULL) {
         PyErr_SetString(PyExc_AttributeError,
@@ -357,7 +358,7 @@
     }
     if (PyArray_FLAGS(self) & NPY_ARRAY_OWNDATA) {
         PyArray_XDECREF(self);
-        PyDataMem_FREE(PyArray_DATA(self));
+        PyDataMem_FREE(fa->data);
     }
     if (PyArray_BASE(self)) {
         if (PyArray_FLAGS(self) & NPY_ARRAY_UPDATEIFCOPY) {
