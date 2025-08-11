--- Lib/distutils/unixccompiler.py.orig	2025-08-11 09:37:01
+++ Lib/distutils/unixccompiler.py	2025-08-11 09:37:56
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
