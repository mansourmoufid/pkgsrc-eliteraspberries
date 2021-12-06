$NetBSD$

--- Lib/distutils/sysconfig.py.orig	2020-09-05 03:22:07.000000000 -0400
+++ Lib/distutils/sysconfig.py	2021-12-06 17:35:05.713915270 -0500
@@ -206,6 +206,7 @@
             archiver = ar + ' ' + os.environ['ARFLAGS']
         else:
             archiver = ar + ' ' + ar_flags
+        ranlib = os.environ.get('RANLIB', None)
 
         cc_cmd = cc + ' ' + cflags
         compiler.set_executables(
@@ -215,7 +216,8 @@
             compiler_cxx=cxx,
             linker_so=ldshared,
             linker_exe=cc,
-            archiver=archiver)
+            archiver=archiver,
+            ranlib=ranlib)
 
         compiler.shared_lib_extension = shlib_suffix
 
