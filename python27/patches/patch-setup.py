$NetBSD$

--- setup.py.orig	2020-02-08 18:40:16.000000000 -0500
+++ setup.py	2020-02-08 18:40:37.000000000 -0500
@@ -454,10 +454,6 @@
             os.unlink(tmpfile)
 
     def detect_modules(self):
-        # Ensure that /usr/local is always used
-        if not cross_compiling:
-            add_dir_to_list(self.compiler.library_dirs, '/usr/local/lib')
-            add_dir_to_list(self.compiler.include_dirs, '/usr/local/include')
         if cross_compiling:
             self.add_gcc_paths()
         self.add_multiarch_paths()
@@ -517,16 +513,6 @@
         # be assumed that no additional -I,-L directives are needed.
         inc_dirs = self.compiler.include_dirs[:]
         lib_dirs = self.compiler.library_dirs[:]
-        if not cross_compiling:
-            for d in (
-                '/usr/include',
-                ):
-                add_dir_to_list(inc_dirs, d)
-            for d in (
-                '/lib64', '/usr/lib64',
-                '/lib', '/usr/lib',
-                ):
-                add_dir_to_list(lib_dirs, d)
         exts = []
         missing = []
 
