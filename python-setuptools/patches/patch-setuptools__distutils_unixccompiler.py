--- setuptools/_distutils/unixccompiler.py.orig	2025-08-19 10:49:48
+++ setuptools/_distutils/unixccompiler.py	2025-08-19 10:50:32
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
