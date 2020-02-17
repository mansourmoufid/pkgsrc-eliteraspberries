$NetBSD$

--- setup.py.orig	2020-02-17 13:54:28.000000000 -0500
+++ setup.py	2020-02-17 13:55:50.000000000 -0500
@@ -42,6 +42,7 @@
 
 class BuildExt(build_ext):
     def build_extension(self, ext):
+        return
         try:
             ext.sources = list(map(ensure_source, ext.sources))
         except NoCython:
