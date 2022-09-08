$NetBSD$

--- PyInstaller/building/api.py.orig	2022-08-26 14:14:29.000000000 -0400
+++ PyInstaller/building/api.py	2022-08-26 14:14:42.000000000 -0400
@@ -702,7 +702,10 @@
             # seem to cause issues with further binary signing using real identity. Therefore, we remove all signatures
             # and re-sign the binary using dummy signature once the data is appended.
             logger.info("Removing signature(s) from EXE")
-            osxutils.remove_signature_from_binary(self.name)
+            try:
+                osxutils.remove_signature_from_binary(self.name)
+            except:
+                pass
 
             # Append the PKG data
             logger.info("Appending PKG archive to EXE")
