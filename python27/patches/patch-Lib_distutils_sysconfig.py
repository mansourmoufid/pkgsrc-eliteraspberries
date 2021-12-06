$NetBSD$

--- Lib/distutils/sysconfig.py.orig	2021-12-06 17:28:43.253101418 -0500
+++ Lib/distutils/sysconfig.py	2021-12-06 17:30:03.746735823 -0500
@@ -218,6 +218,7 @@
             archiver = ar + ' ' + os.environ['ARFLAGS']
         else:
             archiver = ar + ' ' + ar_flags
+        ranlib = os.environ.get('RANLIB', None)
 
         cc_cmd = cc + ' ' + cflags
         compiler.set_executables(
@@ -227,7 +228,8 @@
             compiler_cxx=cxx,
             linker_so=ldshared,
             linker_exe=cc,
-            archiver=archiver)
+            archiver=archiver,
+            ranlib=ranlib)
 
         compiler.shared_lib_extension = so_ext
 
