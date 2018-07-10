$NetBSD$

--- PyInstaller/building/build_main.py.orig	2018-06-12 17:32:25.000000000 -0400
+++ PyInstaller/building/build_main.py	2018-06-12 18:00:48.000000000 -0400
@@ -335,6 +335,11 @@
         self.graph.set_setuptools_nspackages()
 
         # Analyze the script's hidden imports (named on the command line)
+        for hiddenimport in list(self.hiddenimports):
+            if os.path.isfile(hiddenimport):
+                self.hiddenimports.remove(hiddenimport)
+                with open(hiddenimport, 'r') as f:
+                    self.hiddenimports.extend(f.read().splitlines())
         self.graph.add_hiddenimports(self.hiddenimports)
 
 
