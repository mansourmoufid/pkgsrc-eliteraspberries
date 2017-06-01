$NetBSD$

--- PyInstaller/hooks/hook-_tkinter.py.orig	2017-05-30 16:43:24.000000000 -0400
+++ PyInstaller/hooks/hook-_tkinter.py	2017-05-30 16:43:29.000000000 -0400
@@ -137,11 +137,13 @@
     # Python code to get path to TCL_LIBRARY.
     tcl_root = exec_statement(
         'from %s import Tcl; print(Tcl().eval("info library"))' % modname_tkinter)
-    tk_version = exec_statement(
-        'from _tkinter import TK_VERSION; print(TK_VERSION)')
+    version = exec_statement('import _tkinter; print(_tkinter.TCL_VERSION)')
+    rootdir = os.path.dirname(tcl_root)
+    if os.path.exists(os.path.join(rootdir, 'tcl' + version[0])):
+        tcl_root = os.path.join(rootdir, 'tcl' + version[0])
 
     # TK_LIBRARY is in the same prefix as Tcl.
-    tk_root = os.path.join(os.path.dirname(tcl_root), 'tk%s' % tk_version)
+    tk_root = os.path.join(rootdir, 'tk' + version)
     return tcl_root, tk_root
 
 
