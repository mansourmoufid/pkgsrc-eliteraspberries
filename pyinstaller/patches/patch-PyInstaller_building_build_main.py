$NetBSD$

--- PyInstaller/building/build_main.py.orig	2020-01-09 13:05:53.000000000 -0500
+++ PyInstaller/building/build_main.py	2020-02-11 16:08:33.000000000 -0500
@@ -416,6 +416,11 @@
             priority_scripts.append(self.graph.run_script(script))
 
         # Analyze the script's hidden imports (named on the command line)
+        for hiddenimport in list(self.hiddenimports):
+            if os.path.isfile(hiddenimport):
+                self.hiddenimports.remove(hiddenimport)
+                with open(hiddenimport, 'r') as f:
+                    self.hiddenimports.extend(f.read().splitlines())
         self.graph.add_hiddenimports(self.hiddenimports)
 
         ### Post-graph hooks.
