$NetBSD$

--- Modules/objc/function.m.orig	2024-04-17 11:37:15
+++ Modules/objc/function.m	2024-04-17 11:38:34
@@ -213,35 +213,9 @@
     }
 
     if (variadicAllArgs) {
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
-            r = ffi_prep_cif_var(
-                &cif, FFI_DEFAULT_ABI, (int)Py_SIZE(self->methinfo), (int)cif_arg_count,
-                PyObjCFFI_Typestr2FFI(self->methinfo->rettype->type), arglist);
-#ifndef __arm64__
-        } else
-#endif
-#endif
-
-#ifndef __arm64__
-        {
-            r = ffi_prep_cif(&cif, FFI_DEFAULT_ABI, (int)cif_arg_count,
-                             PyObjCFFI_Typestr2FFI(self->methinfo->rettype->type),
-                             arglist);
-        }
-
-#else
-#pragma clang diagnostic pop
-#endif
-
+        r = ffi_prep_cif_var(
+            &cif, FFI_DEFAULT_ABI, (int)Py_SIZE(self->methinfo), (int)cif_arg_count,
+            PyObjCFFI_Typestr2FFI(self->methinfo->rettype->type), arglist);
         if (r != FFI_OK) {
             PyErr_Format(PyExc_RuntimeError, "Cannot setup FFI CIF [%d]", r);
             goto error;
