--- Modules/_ctypes/ctypes.h.orig	2016-11-16 21:39:44.000000000 -0500
+++ Modules/_ctypes/ctypes.h	2016-11-16 21:40:45.000000000 -0500
@@ -459,6 +459,7 @@
     void *p = PyCapsule_GetPointer(ptr, name); \
     if (p) { \
         PyMem_Free(p); \
+        p = NULL; \
     } \
 } \
 
