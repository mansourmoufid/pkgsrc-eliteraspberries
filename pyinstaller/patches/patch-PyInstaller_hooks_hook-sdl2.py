$NetBSD$

--- /dev/null	2018-09-13 12:33:22.000000000 -0400
+++ PyInstaller/hooks/hook-sdl2.py	2018-09-13 12:33:24.000000000 -0400
@@ -0,0 +1,6 @@
+import traceback
+try:
+    import sdl2.dll
+    binaries = [(sdl2.dll.dll.libfile, 'lib')]
+except ImportError:
+    traceback.print_exc()
