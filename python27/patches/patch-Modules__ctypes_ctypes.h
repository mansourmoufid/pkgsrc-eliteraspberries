$NetBSD$

https://bugs.python.org/issue42688

--- Modules/_ctypes/ctypes.h.orig	2021-11-28 14:42:57.000000000 -0500
+++ Modules/_ctypes/ctypes.h	2021-11-28 14:45:41.000000000 -0500
@@ -481,6 +481,13 @@
 
 #endif /* PY_VERSION_HEX >= 0x020700A4 */
 
+#if USING_MALLOC_CLOSURE_DOT_C
+void Py_ffi_closure_free(void *p);
+void *Py_ffi_closure_alloc(size_t size, void** codeloc);
+#else
+#define Py_ffi_closure_free ffi_closure_free
+#define Py_ffi_closure_alloc ffi_closure_alloc
+#endif
 
 /*
  Local Variables:
