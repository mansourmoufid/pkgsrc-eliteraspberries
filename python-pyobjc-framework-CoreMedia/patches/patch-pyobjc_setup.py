$NetBSD$

--- pyobjc_setup.py.orig	2021-11-18 14:13:45.000000000 -0500
+++ pyobjc_setup.py	2021-11-18 14:14:35.000000000 -0500
@@ -221,6 +221,9 @@
 
 
 def get_sdk():
+    sdkroot = os.environ.get("SDKROOT", None)
+    if sdkroot:
+        return sdkroot
     env_cflags = os.environ.get("CFLAGS", "")
     config_cflags = get_config_var("CFLAGS")
     sdk = None
