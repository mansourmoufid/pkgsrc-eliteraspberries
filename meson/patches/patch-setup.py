$NetBSD$

--- setup.py.orig	2020-02-06 18:00:59.000000000 -0500
+++ setup.py	2020-02-06 18:01:09.000000000 -0500
@@ -44,7 +44,7 @@
 data_files = []
 if sys.platform != 'win32':
     # Only useful on UNIX-like systems
-    data_files = [('share/man/man1', ['man/meson.1']),
+    data_files = [('man/man1', ['man/meson.1']),
                   ('share/polkit-1/actions', ['data/com.mesonbuild.install.policy'])]
 
 if __name__ == '__main__':
