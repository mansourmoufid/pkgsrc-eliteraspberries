$NetBSD$

--- setup.py.orig	2020-04-19 17:13:39.000000000 -0400
+++ setup.py	2021-11-28 14:46:47.000000000 -0500
@@ -500,10 +500,6 @@
             os.unlink(tmpfile)
 
     def detect_modules(self):
-        # Ensure that /usr/local is always used
-        if not cross_compiling:
-            add_dir_to_list(self.compiler.library_dirs, '/usr/local/lib')
-            add_dir_to_list(self.compiler.include_dirs, '/usr/local/include')
         if cross_compiling:
             self.add_gcc_paths()
         self.add_multiarch_paths()
@@ -563,16 +559,6 @@
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
 
@@ -2063,6 +2049,7 @@
         return True
 
     def configure_ctypes(self, ext):
+        return True
         if not self.use_system_libffi:
             if host_platform == 'darwin':
                 return self.configure_ctypes_darwin(ext)
@@ -2129,11 +2116,9 @@
 
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
@@ -2160,14 +2145,6 @@
                              sources=['_ctypes/_ctypes_test.c'])
         self.extensions.extend([ext, ext_test])
 
-        if not '--with-system-ffi' in sysconfig.get_config_var("CONFIG_ARGS"):
-            return
-
-        if host_platform == 'darwin':
-            # OS X 10.5 comes with libffi.dylib; the include files are
-            # in /usr/include/ffi
-            inc_dirs.append('/usr/include/ffi')
-
         ffi_inc = [sysconfig.get_config_var("LIBFFI_INCLUDEDIR")]
         if not ffi_inc or ffi_inc[0] == '':
             ffi_inc = find_file('ffi.h', [], inc_dirs)
