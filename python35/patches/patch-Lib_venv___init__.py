$NetBSD$

--- Lib/venv/__init__.py.orig	2021-12-05 16:59:04.757689740 -0500
+++ Lib/venv/__init__.py	2021-12-05 16:59:27.821320714 -0500
@@ -261,7 +261,7 @@
         # intended for the global Python environment
         cmd = [context.env_exe, '-Im', 'ensurepip', '--upgrade',
                                                     '--default-pip']
-        subprocess.check_output(cmd, stderr=subprocess.STDOUT)
+        # subprocess.check_output(cmd, stderr=subprocess.STDOUT)
 
     def setup_scripts(self, context):
         """
