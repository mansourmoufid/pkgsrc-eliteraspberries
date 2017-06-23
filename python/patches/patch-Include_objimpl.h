$NetBSD$

--- Include/objimpl.h.orig	2016-12-17 15:05:05.000000000 -0500
+++ Include/objimpl.h	2017-06-20 11:00:12.000000000 -0400
@@ -115,23 +115,20 @@
 PyAPI_FUNC(void *) _PyMem_DebugMalloc(size_t nbytes);
 PyAPI_FUNC(void *) _PyMem_DebugRealloc(void *p, size_t nbytes);
 PyAPI_FUNC(void) _PyMem_DebugFree(void *p);
-#define PyObject_MALLOC         _PyObject_DebugMalloc
-#define PyObject_Malloc         _PyObject_DebugMalloc
-#define PyObject_REALLOC        _PyObject_DebugRealloc
-#define PyObject_Realloc        _PyObject_DebugRealloc
-#define PyObject_FREE           _PyObject_DebugFree
-#define PyObject_Free           _PyObject_DebugFree
+#define PyObject_MALLOC     malloc
+#define PyObject_REALLOC    realloc
+#define PyObject_FREE       free
 
 #else   /* WITH_PYMALLOC && ! PYMALLOC_DEBUG */
-#define PyObject_MALLOC         PyObject_Malloc
-#define PyObject_REALLOC        PyObject_Realloc
-#define PyObject_FREE           PyObject_Free
+#define PyObject_MALLOC     malloc
+#define PyObject_REALLOC    realloc
+#define PyObject_FREE       free
 #endif
 
 #else   /* ! WITH_PYMALLOC */
-#define PyObject_MALLOC         PyMem_MALLOC
-#define PyObject_REALLOC        PyMem_REALLOC
-#define PyObject_FREE           PyMem_FREE
+#define PyObject_MALLOC     malloc
+#define PyObject_REALLOC    realloc
+#define PyObject_FREE       free
 
 #endif  /* WITH_PYMALLOC */
 
