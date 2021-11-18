$NetBSD$

--- Modules/objc/libffi_support.m.orig	2021-10-26 07:32:35.000000000 -0400
+++ Modules/objc/libffi_support.m	2021-11-18 13:38:10.000000000 -0500
@@ -4997,14 +4997,6 @@
 
 #ifdef HAVE_CLOSURE_POOL
 
-#if PyObjC_BUILD_RELEASE >= 1015
-    if (@available(macOS 10.15, *)) {
-        cl     = ffi_find_closure_for_code_np(closure);
-        retval = cl->user_data;
-        PyObjCFFI_FreeCIF(cl->cif);
-        ffi_closure_free(cl);
-    } else
-#endif
     {
         cl     = (ffi_closure*)closure;
         retval = cl->user_data;
@@ -5014,7 +5006,7 @@
 #else
 #pragma clang diagnostic push
 #pragma clang diagnostic ignored "-Wunguarded-availability-new"
-    cl     = ffi_find_closure_for_code_np(closure);
+    cl     = (ffi_closure*)closure;
     retval = cl->user_data;
     PyObjCFFI_FreeCIF(cl->cif);
     ffi_closure_free(cl);
