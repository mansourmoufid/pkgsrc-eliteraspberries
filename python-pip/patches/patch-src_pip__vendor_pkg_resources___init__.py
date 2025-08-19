--- src/pip/_vendor/pkg_resources/__init__.py.orig	2025-08-19 10:59:11
+++ src/pip/_vendor/pkg_resources/__init__.py	2025-08-19 11:00:19
@@ -2786,9 +2786,8 @@
 
     def egg_name(self):
         """Return what this distribution's standard .egg filename should be"""
-        filename = "%s-%s-py%s" % (
+        filename = "%s-%s" % (
             to_filename(self.project_name), to_filename(self.version),
-            self.py_version or PY_MAJOR
         )
 
         if self.platform:
