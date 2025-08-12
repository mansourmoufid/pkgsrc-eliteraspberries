--- setup.py.orig	2025-07-30 14:13:00
+++ setup.py	2025-08-11 20:57:30
@@ -28,7 +28,7 @@
 data_files = []
 if sys.platform != 'win32':
     # Only useful on UNIX-like systems
-    data_files = [('share/man/man1', ['man/meson.1']),
+    data_files = [('man/man1', ['man/meson.1']),
                   ('share/polkit-1/actions', ['data/com.mesonbuild.install.policy'])]
 
 setup(data_files=data_files,**scm_args)
