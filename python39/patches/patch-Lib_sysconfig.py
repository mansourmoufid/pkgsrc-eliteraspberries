--- Lib/sysconfig.py.orig	2025-08-11 09:38:35
+++ Lib/sysconfig.py	2025-08-11 09:39:07
@@ -352,12 +352,7 @@
 
 
 def _get_sysconfigdata_name():
-    return os.environ.get('_PYTHON_SYSCONFIGDATA_NAME',
-        '_sysconfigdata_{abi}_{platform}_{multiarch}'.format(
-        abi=sys.abiflags,
-        platform=sys.platform,
-        multiarch=getattr(sys.implementation, '_multiarch', ''),
-    ))
+    return os.environ.get('_PYTHON_SYSCONFIGDATA_NAME', '_sysconfigdata')
 
 
 def _generate_posix_vars():
