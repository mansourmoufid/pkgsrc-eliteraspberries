$NetBSD$

--- Lib/distutils/sysconfig.py.orig	2021-11-13 23:03:43.000000000 -0500
+++ Lib/distutils/sysconfig.py	2021-11-13 23:08:45.000000000 -0500
@@ -238,7 +238,7 @@
     if python_build:
         return os.path.join(_sys_home or project_base, "Makefile")
     lib_dir = get_python_lib(plat_specific=0, standard_lib=1)
-    config_file = 'config-{}{}'.format(get_python_version(), build_flags)
+    config_file = 'config-{}'.format(get_python_version())
     if hasattr(sys.implementation, '_multiarch'):
         config_file += '-%s' % sys.implementation._multiarch
     return os.path.join(lib_dir, config_file, 'Makefile')
@@ -415,12 +415,7 @@
 def _init_posix():
     """Initialize the module as appropriate for POSIX systems."""
     # _sysconfigdata is generated at build time, see the sysconfig module
-    name = os.environ.get('_PYTHON_SYSCONFIGDATA_NAME',
-        '_sysconfigdata_{abi}_{platform}_{multiarch}'.format(
-        abi=sys.abiflags,
-        platform=sys.platform,
-        multiarch=getattr(sys.implementation, '_multiarch', ''),
-    ))
+    name = os.environ.get('_PYTHON_SYSCONFIGDATA_NAME', '_sysconfigdata')
     _temp = __import__(name, globals(), locals(), ['build_time_vars'], 0)
     build_time_vars = _temp.build_time_vars
     global _config_vars
