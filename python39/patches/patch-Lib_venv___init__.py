--- Lib/venv/__init__.py.orig	2025-08-11 09:39:46
+++ Lib/venv/__init__.py	2025-08-11 09:39:57
@@ -311,7 +311,7 @@
         # intended for the global Python environment
         cmd = [context.env_exec_cmd, '-Im', 'ensurepip', '--upgrade',
                                                          '--default-pip']
-        subprocess.check_output(cmd, stderr=subprocess.STDOUT)
+        # subprocess.check_output(cmd, stderr=subprocess.STDOUT)
 
     def setup_scripts(self, context):
         """
