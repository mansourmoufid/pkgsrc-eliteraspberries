$NetBSD$

--- Lib/sysconfig.py.orig	2021-11-13 23:01:51.000000000 -0500
+++ Lib/sysconfig.py	2021-11-13 23:02:54.000000000 -0500
@@ -343,12 +343,7 @@
 
 
 def _get_sysconfigdata_name():
-    return os.environ.get('_PYTHON_SYSCONFIGDATA_NAME',
-        '_sysconfigdata_{abi}_{platform}_{multiarch}'.format(
-        abi=sys.abiflags,
-        platform=sys.platform,
-        multiarch=getattr(sys.implementation, '_multiarch', ''),
-    ))
+    return os.environ.get('_PYTHON_SYSCONFIGDATA_NAME', '_sysconfigdata')
 
 
 def _generate_posix_vars():
