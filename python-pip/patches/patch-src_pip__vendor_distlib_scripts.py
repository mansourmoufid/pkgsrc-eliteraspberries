$NetBSD$

--- src/pip/_vendor/distlib/scripts.py.orig	2020-01-24 09:47:34.000000000 -0500
+++ src/pip/_vendor/distlib/scripts.py	2020-04-16 13:17:58.000000000 -0400
@@ -153,6 +153,7 @@
         return result
 
     def _get_shebang(self, encoding, post_interp=b'', options=None):
+        return '#!/usr/bin/env ' + os.path.basename(sys.executable) + '\n'
         enquote = True
         if self.executable:
             executable = self.executable
@@ -229,11 +230,10 @@
 
     def _write_script(self, names, shebang, script_bytes, filenames, ext):
         use_launcher = self.add_launchers and self._is_nt
-        linesep = os.linesep.encode('utf-8')
-        if not shebang.endswith(linesep):
-            shebang += linesep
+        if not shebang.endswith(os.linesep):
+            shebang += os.linesep
         if not use_launcher:
-            script_bytes = shebang + script_bytes
+            script_bytes = shebang.encode('ascii') + script_bytes
         else:  # pragma: no cover
             if ext == 'py':
                 launcher = self._get_launcher('t')
