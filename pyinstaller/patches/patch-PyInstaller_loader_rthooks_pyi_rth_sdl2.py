$NetBSD$

--- /dev/null	2018-09-13 12:34:52.000000000 -0400
+++ PyInstaller/loader/rthooks/pyi_rth_sdl2.py	2018-09-13 12:37:04.000000000 -0400
@@ -0,0 +1,3 @@
+import os
+import sys
+os.environ['PYSDL2_DLL_PATH'] = os.path.join(sys._MEIPASS, 'lib')
