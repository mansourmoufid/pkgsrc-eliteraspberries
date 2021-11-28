$NetBSD$

https://bugs.python.org/issue42688

--- Modules/_ctypes/malloc_closure.c.orig	2021-11-28 14:43:10.000000000 -0500
+++ Modules/_ctypes/malloc_closure.c	2021-11-28 14:44:39.000000000 -0500
@@ -89,16 +89,35 @@
 /******************************************************************/
 
 /* put the item back into the free list */
-void ffi_closure_free(void *p)
+void Py_ffi_closure_free(void *p)
 {
+#if HAVE_FFI_CLOSURE_ALLOC
+#if USING_APPLE_OS_LIBFFI
+    if (__builtin_available(macos 10.15, ios 13, watchos 6, tvos 13, *)) {
+#endif
+        ffi_closure_free(p);
+        return;
+#if USING_APPLE_OS_LIBFFI
+    }
+#endif
+#endif
     ITEM *item = (ITEM *)p;
     item->next = free_list;
     free_list = item;
 }
 
 /* return one item from the free list, allocating more if needed */
-void *ffi_closure_alloc(size_t ignored, void** codeloc)
+void *Py_ffi_closure_alloc(size_t ignored, void** codeloc)
 {
+#if HAVE_FFI_CLOSURE_ALLOC
+#if USING_APPLE_OS_LIBFFI
+    if (__builtin_available(macos 10.15, ios 13, watchos 6, tvos 13, *)) {
+#endif
+        return ffi_closure_alloc(size, codeloc);
+#if USING_APPLE_OS_LIBFFI
+    }
+#endif
+#endif
     ITEM *item;
     if (!free_list)
         more_core();
