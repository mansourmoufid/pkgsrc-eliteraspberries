$NetBSD$

--- Modules/objc/opaque-pointer.m.orig	2024-04-17 15:34:26
+++ Modules/objc/opaque-pointer.m	2024-04-17 15:35:27
@@ -402,31 +402,7 @@
     return (PyObject*)newType;
 
 error_cleanup:
-
-#ifdef HAVE_CLOSURE_POOL
-#if PyObjC_BUILD_RELEASE >= 1015
-    if (@available(macOS 10.15, *)) {
-        if (cl_to_c) {
-            ffi_closure_free(cl_to_c);
-        }
-
-        if (cl_from_c) {
-            ffi_closure_free(cl_from_c);
-        }
-    } else
-#endif
-    {
-        if (cl_to_c) {
-            PyObjC_ffi_closure_free(cl_to_c);
-        }
 
-        if (cl_from_c) {
-            PyObjC_ffi_closure_free(cl_from_c);
-        }
-    }
-#else
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wunguarded-availability-new"
     if (cl_to_c) {                 // LCOV_BR_EXCL_LINE
         ffi_closure_free(cl_to_c); // LCOV_EXCL_LINE
     }                              // LCOV_EXCL_LINE
@@ -434,8 +410,6 @@
     if (cl_from_c) {                 // LCOV_BR_EXCL_LINE
         ffi_closure_free(cl_from_c); // LCOV_EXCL_LINE
     }                                // LCOV_EXCL_LINE
-#pragma clang diagnostic pop
-#endif
     Py_XDECREF(newType);
     Py_XDECREF(v);
     Py_XDECREF(w);
