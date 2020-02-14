$NetBSD$

--- src/pip/_internal/operations/install/wheel.py.orig	2020-02-03 16:05:34.000000000 -0500
+++ src/pip/_internal/operations/install/wheel.py	2020-02-03 16:06:46.000000000 -0500
@@ -79,6 +79,7 @@
     """Replace #!python with #!/path/to/python
     Return True if file was changed.
     """
+    return False
     # XXX RECORD hashes will need to be updated
     if os.path.isfile(path):
         with open(path, 'rb') as script:
