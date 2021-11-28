$NetBSD$

--- src/pip/_vendor/distlib/scripts.py.orig	2019-10-13 16:58:00.000000000 -0400
+++ src/pip/_vendor/distlib/scripts.py	2019-10-13 16:59:55.000000000 -0400
@@ -168,6 +168,7 @@
         return result
 
     def _get_shebang(self, encoding, post_interp=b'', options=None):
+        return '#!/usr/bin/env ' + os.path.basename(sys.executable) + '\n'
         enquote = True
         if self.executable:
             executable = self.executable
