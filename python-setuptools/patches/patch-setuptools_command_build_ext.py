$NetBSD$

--- setuptools/command/build_ext.py.orig	2022-08-14 17:07:08.000000000 -0400
+++ setuptools/command/build_ext.py	2022-08-14 17:07:14.000000000 -0400
@@ -34,6 +34,7 @@
 
 
 def _customize_compiler_for_shlib(compiler):
+    return
     if sys.platform == "darwin":
         # building .dylib requires additional compiler flags on OSX; here we
         # temporarily substitute the pyconfig.h variables so that distutils'
@@ -75,7 +76,7 @@
     """Return the file extension for an abi3-compliant Extension()"""
     for suffix in EXTENSION_SUFFIXES:
         if '.abi3' in suffix:  # Unix
-            return suffix
+            return suffix.replace('.abi3', '')
         elif suffix == '.pyd':  # Windows
             return suffix
 
@@ -122,8 +123,6 @@
             )
             if use_abi3:
                 so_ext = get_config_var('EXT_SUFFIX')
-                filename = filename[:-len(so_ext)]
-                filename = filename + get_abi3_suffix()
             if isinstance(ext, Library):
                 fn, ext = os.path.splitext(filename)
                 return self.shlib_compiler.library_filename(fn, libtype)
