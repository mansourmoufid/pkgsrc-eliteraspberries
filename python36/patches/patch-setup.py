$NetBSD$

--- setup.py.orig	2021-09-03 23:49:41.000000000 -0400
+++ setup.py	2021-11-13 20:52:02.351452570 -0500
@@ -517,12 +517,6 @@
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
@@ -574,8 +568,8 @@
             add_dir_to_list(self.compiler.include_dirs,
                             sysconfig.get_config_var("INCLUDEDIR"))
 
-        system_lib_dirs = ['/lib64', '/usr/lib64', '/lib', '/usr/lib']
-        system_include_dirs = ['/usr/include']
+        system_lib_dirs = []
+        system_include_dirs = []
         # lib_dirs and inc_dirs are used to search for files;
         # if a file is found in one of those directories, it can
         # be assumed that no additional -I,-L directives are needed.
