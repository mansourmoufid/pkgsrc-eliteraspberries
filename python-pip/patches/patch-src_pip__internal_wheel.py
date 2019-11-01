$NetBSD$

--- src/pip/_internal/wheel.py.orig	2019-10-13 17:15:46.000000000 -0400
+++ src/pip/_internal/wheel.py	2019-10-13 17:16:06.000000000 -0400
@@ -75,6 +75,7 @@
 
 
 def fix_script(path):
+    return False
     """Replace #!python with #!/path/to/python
     Return True if file was changed."""
     # XXX RECORD hashes will need to be updated
