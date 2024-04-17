$NetBSD$

--- pyobjc_setup.py.orig	2023-12-07 03:35:35
+++ pyobjc_setup.py	2024-04-17 15:56:48
@@ -236,6 +236,9 @@
 
 
 def get_sdk():
+    sdkroot = os.environ.get("SDKROOT", None)
+    if sdkroot is not None:
+        return sdkroot
     env_cflags = os.environ.get("CFLAGS", "")
     config_cflags = get_config_var("CFLAGS")
     sdk = None
@@ -523,9 +526,6 @@
     if os_level == "10.4":
         cflags.append("-DNO_OBJC2_RUNTIME")
 
-    if "-Werror" not in cflags:
-        cflags.append("-Werror")
-
     if "extra_compile_args" in kwds:
         kwds["extra_compile_args"] = kwds["extra_compile_args"] + cflags
     else:
