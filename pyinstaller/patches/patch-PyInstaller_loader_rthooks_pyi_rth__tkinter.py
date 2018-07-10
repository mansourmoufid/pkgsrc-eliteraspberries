$NetBSD$

--- PyInstaller/loader/rthooks/pyi_rth__tkinter.py.orig	2018-06-08 16:47:33.000000000 -0400
+++ PyInstaller/loader/rthooks/pyi_rth__tkinter.py	2018-06-08 16:55:17.000000000 -0400
@@ -11,6 +11,8 @@
 import os
 import sys
 
+from _tkinter import TCL_VERSION, TK_VERSION
+
 
 try:
     FileNotFoundError
@@ -21,11 +23,20 @@
     # terminates when this exception occurs.
     FileNotFoundError = IOError
 
-tcldir = os.path.join(sys._MEIPASS, 'tcl')
-tkdir = os.path.join(sys._MEIPASS, 'tk')
+for dir in ['tcl', 'tcl' + TCL_VERSION]:
+    tcldir = os.path.join(sys._MEIPASS, dir)
+    inittcl = os.path.join(tcldir, 'init.tcl')
+    if os.path.exists(inittcl):
+        break
+for dir in ['tk', 'tk' + TK_VERSION]:
+    tkdir = os.path.join(sys._MEIPASS, dir)
+    if os.path.isdir(tkdir):
+        break
 
 if not os.path.isdir(tcldir):
     raise FileNotFoundError('Tcl data directory "%s" not found.' % (tcldir))
+if not os.path.exists(inittcl):
+    raise FileNotFoundError('Tcl init script "%s" not found.' % (inittcl))
 if not os.path.isdir(tkdir):
     raise FileNotFoundError('Tk data directory "%s" not found.' % (tkdir))
 
