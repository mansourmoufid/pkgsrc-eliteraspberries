--- setuptools/_distutils/command/install_egg_info.py.orig	2025-08-19 10:45:01
+++ setuptools/_distutils/command/install_egg_info.py	2025-08-19 10:45:22
@@ -21,10 +21,9 @@
 
     def finalize_options(self):
         self.set_undefined_options('install_lib',('install_dir','install_dir'))
-        basename = "%s-%s-py%d.%d.egg-info" % (
+        basename = "%s-%s.egg-info" % (
             to_filename(safe_name(self.distribution.get_name())),
             to_filename(safe_version(self.distribution.get_version())),
-            *sys.version_info[:2]
         )
         self.target = os.path.join(self.install_dir, basename)
         self.outputs = [self.target]
