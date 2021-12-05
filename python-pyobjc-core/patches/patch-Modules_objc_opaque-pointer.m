$NetBSD$

--- Modules/objc/opaque-pointer.m.orig	2021-11-23 14:26:09.000000000 -0500
+++ Modules/objc/opaque-pointer.m	2021-11-23 14:34:41.000000000 -0500
@@ -327,45 +327,12 @@
     }
     Py_CLEAR(w);
 
-#ifdef HAVE_CLOSURE_POOL
-
-#if PyObjC_BUILD_RELEASE >= 1015
-    if (@available(macOS 10.15, *)) {
-        cl_to_c = ffi_closure_alloc(sizeof(*cl_to_c), &codeloc);
-    } else
-#endif
-    {
-        cl_to_c = PyObjC_ffi_closure_alloc(sizeof(*cl_to_c), &codeloc);
-    }
-#else
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wunguarded-availability-new"
-
     cl_to_c = ffi_closure_alloc(sizeof(*cl_to_c), &codeloc);
-
-#pragma clang diagnostic pop
-#endif
     if (cl_to_c == NULL) {
         goto error_cleanup;
     }
 
-#if PyObjC_BUILD_RELEASE >= 1015
-    if (@available(macOS 10.15, *)) {
         rv = ffi_prep_closure_loc(cl_to_c, convert_cif, opaque_to_c, newType, codeloc);
-    } else
-#endif
-    {
-#ifdef __arm64__
-        rv = FFI_BAD_ABI;
-#else
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wdeprecated-declarations"
-
-        rv = ffi_prep_closure(cl_to_c, convert_cif, opaque_to_c, newType);
-
-#pragma clang diagnostic pop
-#endif
-    }
     if (rv != FFI_OK) {
         PyErr_Format(PyExc_RuntimeError, "Cannot create FFI closure: %d", rv);
         goto error_cleanup;
@@ -374,42 +341,12 @@
 
     to_c = (PyObjCPointerWrapper_FromPythonFunc)codeloc;
 
-#ifdef HAVE_CLOSURE_POOL
-#if PyObjC_BUILD_RELEASE >= 1015
-    if (@available(macOS 10.15, *)) {
-        cl_from_c = ffi_closure_alloc(sizeof(*cl_from_c), &codeloc);
-    } else
-#endif
-    {
-        cl_from_c = PyObjC_ffi_closure_alloc(sizeof(*cl_from_c), &codeloc);
-    }
-#else
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wunguarded-availability-new"
     cl_from_c = ffi_closure_alloc(sizeof(*cl_from_c), &codeloc);
-#pragma clang diagnostic pop
-#endif
     if (cl_from_c == NULL) {
         goto error_cleanup;
     }
 
-#if PyObjC_BUILD_RELEASE >= 1015
-    if (@available(macOS 10.15, *)) {
         rv = ffi_prep_closure_loc(cl_from_c, new_cif, opaque_from_c, newType, codeloc);
-    } else
-#endif
-    {
-#ifdef __arm64__
-        rv = FFI_BAD_ABI;
-#else
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wdeprecated-declarations"
-
-        rv = ffi_prep_closure(cl_from_c, new_cif, opaque_from_c, newType);
-
-#pragma clang diagnostic pop
-#endif
-    }
     if (rv != FFI_OK) {
         PyErr_Format(PyExc_RuntimeError, "Cannot create FFI closure: %d", rv);
         Py_XDECREF(newType);
@@ -430,39 +367,12 @@
 
 error_cleanup:
 
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
-
-        if (cl_from_c) {
-            PyObjC_ffi_closure_free(cl_from_c);
-        }
-    }
-#else
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wunguarded-availability-new"
     if (cl_to_c) {
         ffi_closure_free(cl_to_c);
     }
-
     if (cl_from_c) {
         ffi_closure_free(cl_from_c);
     }
-#pragma clang diagnostic pop
-#endif
     Py_XDECREF(newType);
     Py_XDECREF(v);
     Py_XDECREF(w);
