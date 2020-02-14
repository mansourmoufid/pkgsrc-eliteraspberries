$NetBSD$

--- Lib/distutils/command/install_egg_info.py.orig	2020-02-08 13:57:29.000000000 -0500
+++ Lib/distutils/command/install_egg_info.py	2020-02-08 13:57:43.000000000 -0500
@@ -21,10 +21,9 @@
 
     def finalize_options(self):
         self.set_undefined_options('install_lib',('install_dir','install_dir'))
-        basename = "%s-%s-py%s.egg-info" % (
+        basename = "%s-%s.egg-info" % (
             to_filename(safe_name(self.distribution.get_name())),
             to_filename(safe_version(self.distribution.get_version())),
-            sys.version[:3]
         )
         self.target = os.path.join(self.install_dir, basename)
         self.outputs = [self.target]
