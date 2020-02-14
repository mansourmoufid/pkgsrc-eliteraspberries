$NetBSD$

--- pkg_resources/__init__.py.orig	2020-01-24 10:41:22.000000000 -0500
+++ pkg_resources/__init__.py	2020-01-24 10:41:41.000000000 -0500
@@ -2641,9 +2641,8 @@
 
     def egg_name(self):
         """Return what this distribution's standard .egg filename should be"""
-        filename = "%s-%s-py%s" % (
+        filename = "%s-%s" % (
             to_filename(self.project_name), to_filename(self.version),
-            self.py_version or PY_MAJOR
         )
 
         if self.platform:
