$NetBSD$

--- src/pip/_internal/operations/install/wheel.py.orig	2021-10-22 11:15:54.000000000 -0400
+++ src/pip/_internal/operations/install/wheel.py	2021-11-28 11:21:47.000000000 -0500
@@ -94,6 +94,8 @@
     """Replace #!python with #!/path/to/python
     Return True if file was changed.
     """
+    return False
+
     # XXX RECORD hashes will need to be updated
     assert os.path.isfile(path)
 
