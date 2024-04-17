$NetBSD$

--- Modules/objc/block_support.m.orig	2024-01-20 05:56:15
+++ Modules/objc/block_support.m	2024-04-17 15:43:55
@@ -292,8 +292,6 @@
         values[0]  = &block_ptr;
     }
 
-#if PyObjC_BUILD_RELEASE >= 1015
-    if (@available(macOS 10.15, *)) {
         if (signature->variadic) {
             r = ffi_prep_cif_var(
                 &cif, FFI_DEFAULT_ABI,
@@ -309,14 +307,6 @@
                                       : PyObjCFFI_Typestr2FFI(signature->rettype->type),
                              arglist);
         }
-    } else
-#endif
-    {
-        r = ffi_prep_cif(
-            &cif, FFI_DEFAULT_ABI, (int)(useStret ? cif_arg_count + 1 : cif_arg_count),
-            useStret ? &ffi_type_void : PyObjCFFI_Typestr2FFI(signature->rettype->type),
-            arglist);
-    }
 
 #endif
 
