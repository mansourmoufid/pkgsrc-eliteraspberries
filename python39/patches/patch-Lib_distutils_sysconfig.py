--- Lib/distutils/sysconfig.py.orig	2025-08-11 09:34:08
+++ Lib/distutils/sysconfig.py	2025-08-11 09:36:15
@@ -229,6 +229,7 @@
             archiver = ar + ' ' + os.environ['ARFLAGS']
         else:
             archiver = ar + ' ' + ar_flags
+        ranlib = os.environ.get('RANLIB', None)
 
         cc_cmd = cc + ' ' + cflags
         compiler.set_executables(
@@ -238,7 +239,8 @@
             compiler_cxx=cxx,
             linker_so=ldshared,
             linker_exe=cc,
-            archiver=archiver)
+            archiver=archiver,
+            ranlib=ranlib)
 
         compiler.shared_lib_extension = shlib_suffix
 
@@ -261,9 +263,7 @@
     if python_build:
         return os.path.join(_sys_home or project_base, "Makefile")
     lib_dir = get_python_lib(plat_specific=0, standard_lib=1)
-    config_file = 'config-{}{}'.format(get_python_version(), build_flags)
-    if hasattr(sys.implementation, '_multiarch'):
-        config_file += '-%s' % sys.implementation._multiarch
+    config_file = 'config-{}'.format(get_python_version())
     return os.path.join(lib_dir, config_file, 'Makefile')
 
 
@@ -438,12 +438,7 @@
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
