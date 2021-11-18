$NetBSD$

--- pkg_resources/__init__.py.orig	2020-08-14 02:12:36.000000000 -0400
+++ pkg_resources/__init__.py	2021-11-17 17:53:58.000000000 -0500
@@ -2806,9 +2807,8 @@
 
     def egg_name(self):
         """Return what this distribution's standard .egg filename should be"""
-        filename = "%s-%s-py%s" % (
+        filename = "%s-%s" % (
             to_filename(self.project_name), to_filename(self.version),
-            self.py_version or PY_MAJOR
         )
 
         if self.platform:
