$NetBSD$

--- PyInstaller/building/api.py.orig	2022-01-19 22:56:00.000000000 -0500
+++ PyInstaller/building/api.py	2022-01-19 22:56:09.000000000 -0500
@@ -702,7 +702,7 @@
             # seem to cause issues with further binary signing using real identity. Therefore, we remove all signatures
             # and re-sign the binary using dummy signature once the data is appended.
             logger.info("Removing signature(s) from EXE")
-            osxutils.remove_signature_from_binary(self.name)
+            # osxutils.remove_signature_from_binary(self.name)
 
             # Append the PKG data
             logger.info("Appending PKG archive to EXE")
