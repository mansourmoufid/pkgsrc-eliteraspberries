$NetBSD$

--- setup.py.orig	2021-11-14 11:29:33.000000000 -0500
+++ setup.py	2021-11-14 11:30:48.000000000 -0500
@@ -28,7 +28,7 @@
 try:
     from wheel.bdist_wheel import bdist_wheel
 except ImportError:
-    raise SystemExit("Error: Building wheels requires the 'wheel' package. Please `pip install wheel` then try again.")
+    bdist_wheel = object
 
 
 class build_bootloader(Command):
