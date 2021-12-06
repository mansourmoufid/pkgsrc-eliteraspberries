$NetBSD$

--- Lib/distutils/unixccompiler.py.orig	2021-12-06 17:31:08.876826853 -0500
+++ Lib/distutils/unixccompiler.py	2021-12-06 17:31:26.396314051 -0500
@@ -65,8 +65,9 @@
                    'ranlib'       : None,
                   }
 
-    if sys.platform[:6] == "darwin":
-        executables['ranlib'] = ["ranlib"]
+    if '_PYTHON_HOST_PLATFORM' not in os.environ:
+        if sys.platform[:6] == "darwin":
+            executables['ranlib'] = ["ranlib"]
 
     # Needed for the filename generation methods provided by the base
     # class, CCompiler.  NB. whoever instantiates/uses a particular
