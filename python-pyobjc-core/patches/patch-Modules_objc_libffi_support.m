$NetBSD$

--- Modules/objc/libffi_support.m.orig	2021-11-23 18:53:33.000000000 -0500
+++ Modules/objc/libffi_support.m	2021-11-23 18:55:47.000000000 -0500
@@ -4313,30 +4313,8 @@
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
@@ -4863,30 +4841,8 @@
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
@@ -4934,47 +4890,13 @@
     }
 
     /* And finally create the actual closure */
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
     cl     = ffi_closure_alloc(sizeof(*cl), &codeloc);
-#pragma clang diagnostic pop
-#endif
     if (cl == NULL) {
         PyObjCFFI_FreeCIF(cif);
         return NULL;
     }
 
-#if PyObjC_BUILD_RELEASE >= 1015
-    if (@available(macOS 10.15, *)) {
         rv = ffi_prep_closure_loc(cl, cif, func, userdata, codeloc);
-    } else {
-#ifdef __arm64__
-        rv = FFI_BAD_ABI;
-#else
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wdeprecated-declarations"
-
-        rv = ffi_prep_closure(cl, cif, func, userdata);
-
-#pragma clang diagnostic pop
-#endif
-    }
-
-#else /* PyObjC_BUILD_RELEASE < 1015 */
-    rv     = ffi_prep_closure(cl, cif, func, userdata);
-#endif
-
     if (rv != FFI_OK) {
         PyObjCFFI_FreeCIF(cif);
         PyErr_Format(PyExc_RuntimeError, "Cannot create FFI closure: %d", rv);
@@ -4995,31 +4917,10 @@
     void*        retval;
     ffi_closure* cl;
 
-#ifdef HAVE_CLOSURE_POOL
-
-#if PyObjC_BUILD_RELEASE >= 1015
-    if (@available(macOS 10.15, *)) {
-        cl     = ffi_find_closure_for_code_np(closure);
-        retval = cl->user_data;
-        PyObjCFFI_FreeCIF(cl->cif);
-        ffi_closure_free(cl);
-    } else
-#endif
-    {
-        cl     = (ffi_closure*)closure;
-        retval = cl->user_data;
-        PyObjCFFI_FreeCIF(cl->cif);
-        PyObjC_ffi_closure_free(cl);
-    }
-#else
-#pragma clang diagnostic push
-#pragma clang diagnostic ignored "-Wunguarded-availability-new"
-    cl     = ffi_find_closure_for_code_np(closure);
+    cl     = (ffi_closure*)closure;
     retval = cl->user_data;
     PyObjCFFI_FreeCIF(cl->cif);
     ffi_closure_free(cl);
-#pragma clang diagnostic pop
-#endif
     return retval;
 }
 
