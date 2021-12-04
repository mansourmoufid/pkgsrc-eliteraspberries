$NetBSD$

--- src/pip/_vendor/distlib/scripts.py.orig	2021-10-22 11:15:54.000000000 -0400
+++ src/pip/_vendor/distlib/scripts.py	2021-11-28 17:43:49.000000000 -0500
@@ -156,6 +156,7 @@
         return result
 
     def _get_shebang(self, encoding, post_interp=b'', options=None):
+        return '#!/usr/bin/env ' + os.path.basename(sys.executable) + '\n'
         enquote = True
         if self.executable:
             executable = self.executable
@@ -237,11 +238,10 @@
 
     def _write_script(self, names, shebang, script_bytes, filenames, ext):
         use_launcher = self.add_launchers and self._is_nt
-        linesep = os.linesep.encode('utf-8')
-        if not shebang.endswith(linesep):
-            shebang += linesep
+        if not shebang.endswith(os.linesep):
+            shebang += os.linesep
         if not use_launcher:
-            script_bytes = shebang + script_bytes
+            script_bytes = shebang.encode('utf-8') + script_bytes
         else:  # pragma: no cover
             if ext == 'py':
                 launcher = self._get_launcher('t')
