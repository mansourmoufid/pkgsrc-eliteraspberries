--- PyInstaller/depend/bindepend.py.orig	2016-01-31 15:22:49.000000000 -0500
+++ PyInstaller/depend/bindepend.py	2016-04-29 19:52:04.000000000 -0400
@@ -630,9 +630,14 @@
                 # Remove trailing '\x00' characters.
                 # e.g. '../lib\x00\x00'
                 rpath = rpath.rstrip('\x00')
+                # Replace the @executable_path and @loader_path keywords
+                # with the actual path to the binary.
+                executable_path = os.path.dirname(pth)
+                rpath = rpath.replace('@executable_path', executable_path)
+                rpath = rpath.replace('@loader_path', executable_path)
                 # Make rpath absolute. According to Apple doc LC_RPATH
                 # is always relative to the binary location.
-                rpath = os.path.normpath(os.path.join(os.path.dirname(pth), rpath))
+                rpath = os.path.normpath(os.path.join(executable_path, rpath))
                 run_paths.update([rpath])
             else:
                 # Frameworks that have this structure Name.framework/Versions/N/Name
