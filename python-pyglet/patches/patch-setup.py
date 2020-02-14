$NetBSD$

--- setup.py.orig	2020-02-12 14:18:44.000000000 -0500
+++ setup.py	2020-02-12 14:20:18.000000000 -0500
@@ -17,6 +17,11 @@
 excluded = []
 if is_wheel:
     excluded.append('extlibs.future')
+try:
+    import future
+    excluded.append('extlibs.future')
+except ImportError:
+    pass
 
 def exclude_package(pkg):
     for exclude in excluded:
