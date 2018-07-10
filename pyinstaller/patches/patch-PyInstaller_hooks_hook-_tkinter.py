$NetBSD$

--- PyInstaller/hooks/hook-_tkinter.py.orig	2016-05-03 14:32:20.000000000 -0400
+++ PyInstaller/hooks/hook-_tkinter.py	2018-06-08 17:01:07.000000000 -0400
@@ -123,38 +123,48 @@
     return tcl_root, tk_root
 
 
-def _find_tcl_tk_dir():
+def _find_tcl_tk_dirs():
     """
-    Get a platform-agnostic 2-tuple of the absolute paths of the top-level
-    external data directories for both Tcl and Tk, respectively.
+    Get a platform-agnostic list of the absolute paths of the top-level
+    external data directories for Tcl and Tk.
 
     Returns
     -------
     list
-        2-tuple whose first element is the value of `${TCL_LIBRARY}` and whose
-        second element is the value of `${TK_LIBRARY}`.
+        List whose first element is the value of `${TCL_LIBRARY}` and whose
+        last element is the value of `${TK_LIBRARY}`.
     """
     # Python code to get path to TCL_LIBRARY.
-    tcl_root = exec_statement(
-        'from %s import Tcl; print(Tcl().eval("info library"))' % modname_tkinter)
-    tk_version = exec_statement(
-        'from _tkinter import TK_VERSION; print(TK_VERSION)')
-
-    # TK_LIBRARY is in the same prefix as Tcl.
-    tk_root = os.path.join(os.path.dirname(tcl_root), 'tk%s' % tk_version)
-    return tcl_root, tk_root
+    from _tkinter import TCL_VERSION, TK_VERSION
+    try:
+        from Tkinter import Tcl
+    except ImportError:
+        from tkinter import Tcl
+    root = Tcl().eval('info library')
+    rootdir = os.path.dirname(root)
+    tcl_roots = []
+    for dir in ['tcl' + TCL_VERSION, 'tcl' + TCL_VERSION[0]]:
+        tcl_root = os.path.join(rootdir, dir)
+        if os.path.isdir(tcl_root):
+            tcl_roots.append(tcl_root)
+    tk_roots = []
+    for dir in ['tk' + TK_VERSION[0], 'tk' + TK_VERSION]:
+        tk_root = os.path.join(rootdir, dir)
+        if os.path.isdir(tk_root):
+            tk_roots.append(tk_root)
+    return tcl_roots + tk_roots
 
 
 def _find_tcl_tk(hook_api):
     """
-    Get a platform-specific 2-tuple of the absolute paths of the top-level
-    external data directories for both Tcl and Tk, respectively.
+    Get a platform-specific list of the absolute paths of the top-level
+    external data directories for Tcl and Tk.
 
     Returns
     -------
     list
-        2-tuple whose first element is the value of `${TCL_LIBRARY}` and whose
-        second element is the value of `${TK_LIBRARY}`.
+        List whose first element is the value of `${TCL_LIBRARY}` and whose
+        last element is the value of `${TK_LIBRARY}`.
     """
     bins = selectImports(hook_api.__file__)
 
@@ -185,10 +195,10 @@
         # Tcl/Tk compiled as on Linux other Unixes.
         # For example this is the case of Tcl/Tk from macports.
         else:
-            tcl_tk = _find_tcl_tk_dir()
+            tcl_tk = _find_tcl_tk_dirs()
 
     else:
-        tcl_tk = _find_tcl_tk_dir()
+        tcl_tk = _find_tcl_tk_dirs()
 
     return tcl_tk
 
@@ -205,30 +215,38 @@
     # Workaround for broken Tcl/Tk detection in virtualenv on Windows.
     _handle_broken_tcl_tk()
 
-    tcl_root, tk_root = _find_tcl_tk(hook_api)
+    roots = _find_tcl_tk(hook_api)
 
     # TODO Shouldn't these be fatal exceptions?
-    if not tcl_root:
+    if len(roots) == 0:
         logger.error('Tcl/Tk improperly installed on this system.')
         return []
-    if not os.path.isdir(tcl_root):
-        logger.error('Tcl data directory "%s" not found.', tcl_root)
-        return []
-    if not os.path.isdir(tk_root):
-        logger.error('Tk data directory "%s" not found.', tk_root)
-        return []
 
-    tcltree = Tree(
-        tcl_root, prefix='tcl', excludes=['demos', '*.lib', 'tclConfig.sh'])
-    tktree = Tree(
-        tk_root, prefix='tk', excludes=['demos', '*.lib', 'tkConfig.sh'])
+    tcltree = []
+    tktree = []
+    for root in roots:
+        if 'tcl' in root:
+            tree = Tree(
+                root,
+                prefix=os.path.basename(root),
+                excludes=['demos', '*.lib', 'tclConfig.sh'],
+            )
+            tcltree += tree
+        if 'tk' in root:
+            tree = Tree(
+                root,
+                prefix=os.path.basename(root),
+                excludes=['demos', '*.lib', 'tkConfig.sh'],
+            )
+            tktree += tree
 
     # If the current Tcl installation is a Teapot-distributed version of
     # ActiveTcl and the current platform is OS X, warn that this is bad.
     if is_darwin:
+        tcl_root = roots[0]
         _warn_if_activetcl_or_teapot_installed(tcl_root, tcltree)
 
-    return (tcltree + tktree)
+    return tcltree + tktree
 
 
 def hook(hook_api):
