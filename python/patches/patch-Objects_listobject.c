$NetBSD$

--- Objects/listobject.c.orig	2016-12-17 15:05:07.000000000 -0500
+++ Objects/listobject.c	2017-02-09 17:30:26.512250765 -0500
@@ -28,6 +28,14 @@
     size_t new_allocated;
     Py_ssize_t allocated = self->allocated;
 
+    if (newsize == 0) {
+        free(self->ob_item);
+        self->ob_item = NULL;
+        Py_SIZE(self) = 0;
+        self->allocated = 0;
+        return 0;
+    }
+
     /* Bypass realloc() when a previous overallocation is large enough
        to accommodate the newsize.  If the newsize falls lower than half
        the allocated size, then proceed with the realloc() to shrink the list.
@@ -55,8 +63,6 @@
         new_allocated += newsize;
     }
 
-    if (newsize == 0)
-        new_allocated = 0;
     items = self->ob_item;
     if (new_allocated <= (PY_SIZE_MAX / sizeof(PyObject *)))
         PyMem_RESIZE(items, PyObject *, new_allocated);
