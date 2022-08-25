$NetBSD$

--- Lib/distutils/unixccompiler.py.orig	2021-12-06 17:44:39.686697738 -0500
+++ Lib/distutils/unixccompiler.py	2021-12-06 17:44:56.402245112 -0500
@@ -62,8 +62,9 @@
                    'ranlib'       : None,
                   }
 
-    if sys.platform[:6] == "darwin":
-        executables['ranlib'] = ["ranlib"]
+    if '_PYTHON_HOST_PLATFORM' not in os.environ:
+        if sys.platform[:6] == "darwin":
+            executables['ranlib'] = ["ranlib"]
 
     # Needed for the filename generation methods provided by the base
     # class, CCompiler.  NB. whoever instantiates/uses a particular
