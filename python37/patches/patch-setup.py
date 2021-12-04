$NetBSD$

--- setup.py.orig	2021-09-03 23:49:21.000000000 -0400
+++ setup.py	2021-12-03 19:58:17.000000000 -0500
@@ -581,12 +581,6 @@
             os.unlink(tmpfile)
 
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
@@ -1964,6 +1958,7 @@
         return True
 
     def configure_ctypes(self, ext):
+        return True
         if not self.use_system_libffi:
             if host_platform == 'darwin':
                 return self.configure_ctypes_darwin(ext)
@@ -1985,11 +1980,9 @@
 
         if host_platform == 'darwin':
             sources.append('_ctypes/malloc_closure.c')
-            sources.append('_ctypes/darwin/dlfcn_simple.c')
+            extra_compile_args.append('-DUSING_MALLOC_CLOSURE_DOT_C=1')
             extra_compile_args.append('-DMACOSX')
             include_dirs.append('_ctypes/darwin')
-# XXX Is this still needed?
-##            extra_link_args.extend(['-read_only_relocs', 'warning'])
 
         elif host_platform == 'sunos5':
             # XXX This shouldn't be necessary; it appears that some
@@ -2018,13 +2011,6 @@
                      libraries=['m'])
         self.extensions.extend([ext, ext_test])
 
-        if host_platform == 'darwin':
-            if '--with-system-ffi' not in sysconfig.get_config_var("CONFIG_ARGS"):
-                return
-            # OS X 10.5 comes with libffi.dylib; the include files are
-            # in /usr/include/ffi
-            inc_dirs.append('/usr/include/ffi')
-
         ffi_inc = [sysconfig.get_config_var("LIBFFI_INCLUDEDIR")]
         if not ffi_inc or ffi_inc[0] == '':
             ffi_inc = find_file('ffi.h', [], inc_dirs)
