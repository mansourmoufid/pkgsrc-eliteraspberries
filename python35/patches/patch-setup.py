$NetBSD$

--- setup.py.orig	2020-02-09 13:53:56.000000000 -0500
+++ setup.py	2020-02-09 13:57:16.000000000 -0500
@@ -487,12 +487,6 @@
             return ['m']
 
     def detect_modules(self):
-        # Ensure that /usr/local is always used, but the local build
-        # directories (i.e. '.' and 'Include') must be first.  See issue
-        # 10520.
-        if not cross_compiling:
-            add_dir_to_list(self.compiler.library_dirs, '/usr/local/lib')
-            add_dir_to_list(self.compiler.include_dirs, '/usr/local/include')
         # only change this for cross builds for 3.3, issues on Mageia
         if cross_compiling:
             self.add_gcc_paths()
@@ -546,15 +540,8 @@
         # lib_dirs and inc_dirs are used to search for files;
         # if a file is found in one of those directories, it can
         # be assumed that no additional -I,-L directives are needed.
-        if not cross_compiling:
-            lib_dirs = self.compiler.library_dirs + [
-                '/lib64', '/usr/lib64',
-                '/lib', '/usr/lib',
-                ]
-            inc_dirs = self.compiler.include_dirs + ['/usr/include']
-        else:
-            lib_dirs = self.compiler.library_dirs[:]
-            inc_dirs = self.compiler.include_dirs[:]
+        lib_dirs = self.compiler.library_dirs[:]
+        inc_dirs = self.compiler.include_dirs[:]
         exts = []
         missing = []
 
