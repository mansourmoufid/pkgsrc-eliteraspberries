$NetBSD$

--- Modules/objc/struct-wrapper.m.orig	2021-11-23 14:26:28.000000000 -0500
+++ Modules/objc/struct-wrapper.m	2021-11-23 14:35:45.000000000 -0500
@@ -919,65 +919,17 @@
         }
     }
 
-#ifdef HAVE_CLOSURE_POOL
-
-#if PyObjC_BUILD_RELEASE >= 1015
-    if (@available(macOS 10.15, *)) {
-        cl = ffi_closure_alloc(sizeof(*cl), &codeloc);
-    } else
-#endif
-    {
-        cl = PyObjC_ffi_closure_alloc(sizeof(*cl), &codeloc);
-    }
-#else
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wunguarded-availability-new"
     cl = ffi_closure_alloc(sizeof(*cl), &codeloc);
-#pragma clang diagnostic pop
-#endif
     if (cl == NULL) {
         PyMem_Free((void*)typestr_copy);
         return NULL;
     }
 
-#if PyObjC_BUILD_RELEASE >= 1015
-    if (@available(macOS 10.15, *)) {
         rv =
             ffi_prep_closure_loc(cl, init_cif, struct_init, (char*)typestr_copy, codeloc);
-    } else {
-#ifdef __arm64__
-        rv = FFI_BAD_ABI; /* Can't happen... */
-#else
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wdeprecated-declarations"
-
-        rv = ffi_prep_closure(cl, init_cif, struct_init, (char*)typestr_copy);
-
-#pragma clang diagnostic pop
-#endif
-    }
-#else
-
-    rv = ffi_prep_closure(cl, init_cif, struct_init, (char*)typestr_copy);
-#endif
 
     if (rv != FFI_OK) {
-#ifdef HAVE_CLOSURE_POOL
-
-#if PyObjC_BUILD_RELEASE >= 1015
-        if (@available(macOS 10.15, *)) {
-            ffi_closure_free(cl);
-        } else
-#endif
-        {
-            PyObjC_ffi_closure_free(cl);
-        }
-#else
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wunguarded-availability-new"
         ffi_closure_free(cl);
-#pragma clang diagnostic pop
-#endif
         PyMem_Free((void*)typestr_copy);
         PyErr_Format(PyExc_RuntimeError, "Cannot create FFI closure: %d", rv);
         return NULL;
