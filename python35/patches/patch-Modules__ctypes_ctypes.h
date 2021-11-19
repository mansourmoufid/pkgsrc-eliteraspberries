$NetBSD$

https://bugs.python.org/issue42688

--- Modules/_ctypes/ctypes.h.orig
+++ Modules/_ctypes/ctypes.h
@@ -366,6 +366,14 @@ PyObject *_ctypes_get_errobj(int **pspace);
 extern PyObject *ComError;
 #endif
 
+#if USING_MALLOC_CLOSURE_DOT_C
+void Py_ffi_closure_free(void *p);
+void *Py_ffi_closure_alloc(size_t size, void** codeloc);
+#else
+#define Py_ffi_closure_free ffi_closure_free
+#define Py_ffi_closure_alloc ffi_closure_alloc
+#endif
+
 /*
  Local Variables:
  compile-command: "python setup.py -q build install --home ~"
