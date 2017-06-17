$NetBSD$

--- numpy/core/src/multiarray/ctors.c.orig	2017-06-15 15:45:26.000000000 -0400
+++ numpy/core/src/multiarray/ctors.c	2017-06-15 15:58:56.000000000 -0400
@@ -29,6 +29,7 @@
 #include "templ_common.h" /* for npy_mul_with_overflow_intp */
 #include "alloc.h"
 #include <assert.h>
+#include <stdlib.h>
 
 /*
  * Reading from a file or a string.
@@ -902,7 +903,7 @@
     PyArrayObject_fields *fa;
     int i;
     size_t sd;
-    npy_intp size;
+    npy_intp size, nelem;
 
     if (descr->subarray) {
         PyObject *ret;
@@ -930,7 +931,6 @@
     }
 
     /* Check dimensions */
-    size = 1;
     sd = (size_t) descr->elsize;
     if (sd == 0) {
         if (!PyDataType_ISSTRING(descr)) {
@@ -950,6 +950,7 @@
         }
     }
 
+    nelem = 1;
     for (i = 0; i < nd; i++) {
         npy_intp dim = dims[i];
 
@@ -974,13 +975,14 @@
          * multiplying the dimensions together to get the total size of the
          * array.
          */
-        if (npy_mul_with_overflow_intp(&size, size, dim)) {
+        if (npy_mul_with_overflow_intp(&nelem, nelem, dim)) {
             PyErr_SetString(PyExc_ValueError,
                             "array is too big.");
             Py_DECREF(descr);
             return NULL;
         }
     }
+    size = nelem;
 
     fa = (PyArrayObject_fields *) subtype->tp_alloc(subtype, 0);
     if (fa == NULL) {
@@ -1047,12 +1049,7 @@
          * It is bad to have unitialized OBJECT pointers
          * which could also be sub-fields of a VOID array
          */
-        if (zeroed || PyDataType_FLAGCHK(descr, NPY_NEEDS_INIT)) {
-            data = npy_alloc_cache_zero(sd);
-        }
-        else {
-            data = npy_alloc_cache(sd);
-        }
+        data = calloc(nelem, descr->elsize);
         if (data == NULL) {
             PyErr_NoMemory();
             goto fail;
