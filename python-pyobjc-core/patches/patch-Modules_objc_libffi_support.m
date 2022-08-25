--- Modules/objc/libffi_support.m.orig	2022-04-11 04:03:15.000000000 -0400
+++ Modules/objc/libffi_support.m	2022-08-25 14:28:34.000000000 -0400
@@ -4379,30 +4379,8 @@
         goto error_cleanup;
 
     if (methinfo->variadic) {
-#if PyObjC_BUILD_RELEASE >= 1015
-
-#ifdef __arm64__
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wunguarded-availability-new"
-#endif
-
-#ifndef __arm64__
-        if (@available(macOS 10.15, *)) {
-#endif
             r = ffi_prep_cif_var(&cif, FFI_DEFAULT_ABI, (int)Py_SIZE(methinfo), (int)r,
                                  retsig, arglist);
-#ifndef __arm64__
-        } else
-#endif
-#endif
-
-#ifndef __arm64__
-        {
-            r = ffi_prep_cif(&cif, FFI_DEFAULT_ABI, (int)r, retsig, arglist);
-        }
-#else
-#pragma clang diagnostic pop
-#endif
     } else {
         r = ffi_prep_cif(&cif, FFI_DEFAULT_ABI, (int)r, retsig, arglist);
     }
@@ -4923,30 +4901,8 @@
     }
 
     if (methinfo->variadic) {
-#if PyObjC_BUILD_RELEASE >= 1015
-#ifdef __arm64__
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wunguarded-availability-new"
-#endif
-
-#ifndef __arm64__
-        if (@available(macOS 10.15, *)) {
-#endif
             rv = ffi_prep_cif_var(cif, FFI_DEFAULT_ABI, (int)Py_SIZE(methinfo),
                                   (int)Py_SIZE(methinfo), cl_ret_type, cl_arg_types);
-#ifndef __arm64__
-        } else
-#endif
-#endif
-
-#ifndef __arm64__
-        {
-            rv = ffi_prep_cif(cif, FFI_DEFAULT_ABI, (int)Py_SIZE(methinfo), cl_ret_type,
-                              cl_arg_types);
-        }
-#else
-#pragma clang diagnostic pop
-#endif
     } else {
         rv = ffi_prep_cif(cif, FFI_DEFAULT_ABI, (int)Py_SIZE(methinfo), cl_ret_type,
                           cl_arg_types);
@@ -5010,12 +4966,8 @@
 void*
 PyObjCFFI_FreeClosure(IMP closure)
 {
-    ffi_cif* cif;
-    void*    userdata;
-
-    free_closure_from_codeloc(closure, &cif, &userdata);
-    PyObjCFFI_FreeCIF(cif);
-    return userdata;
+    ffi_closure_free(closure);
+    return NULL;
 }
 
 NS_ASSUME_NONNULL_END
