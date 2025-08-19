--- setuptools/_distutils/sysconfig.py.orig	2025-08-19 10:46:20
+++ setuptools/_distutils/sysconfig.py	2025-08-19 10:48:50
@@ -241,6 +241,7 @@
             archiver = ar + ' ' + os.environ['ARFLAGS']
         else:
             archiver = ar + ' ' + ar_flags
+        ranlib = os.environ.get('RANLIB', None)
 
         cc_cmd = cc + ' ' + cflags
         compiler.set_executables(
@@ -250,7 +251,8 @@
             compiler_cxx=cxx,
             linker_so=ldshared,
             linker_exe=cc,
-            archiver=archiver)
+            archiver=archiver,
+            ranlib=ranlib)
 
         compiler.shared_lib_extension = shlib_suffix
 
@@ -273,9 +275,7 @@
     if python_build:
         return os.path.join(_sys_home or project_base, "Makefile")
     lib_dir = get_python_lib(plat_specific=0, standard_lib=1)
-    config_file = 'config-{}{}'.format(get_python_version(), build_flags)
-    if hasattr(sys.implementation, '_multiarch'):
-        config_file += '-%s' % sys.implementation._multiarch
+    config_file = 'config-{}'.format(get_python_version())
     return os.path.join(lib_dir, config_file, 'Makefile')
 
 
@@ -450,12 +450,7 @@
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
     try:
         _temp = __import__(name, globals(), locals(), ['build_time_vars'], 0)
     except ImportError:
