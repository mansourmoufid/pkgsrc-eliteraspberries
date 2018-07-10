$NetBSD$

--- pyobjc_setup.py.orig	2017-12-23 17:27:01.000000000 -0500
+++ pyobjc_setup.py	2017-12-23 17:37:35.000000000 -0500
@@ -391,6 +391,9 @@
         cflags.append('-Wno-deprecated-declarations')
 
     CFLAGS = get_config_var('CFLAGS')
+    sdkroot = os.environ.get('SDKROOT', None)
+    if sdkroot:
+        CFLAGS += ' -isysroot ' + sdkroot
     if '-isysroot' not in CFLAGS: # and os.path.exists('/usr/include/stdio.h'):
         # We're likely on a system with de Xcode Command Line Tools.
         # Explicitly use the most recent problems to avoid compile problems.
