--- setup.py.orig	2025-08-11 09:29:59
+++ setup.py	2025-08-11 09:31:08
@@ -733,12 +733,6 @@
                         add_dir_to_list(dir_list, directory)
 
     def configure_compiler(self):
-        # Ensure that /usr/local is always used, but the local build
-        # directories (i.e. '.' and 'Include') must be first.  See issue
-        # 10520.
-        if not CROSS_COMPILING:
-            add_dir_to_list(self.compiler.library_dirs, '/usr/local/lib')
-            add_dir_to_list(self.compiler.include_dirs, '/usr/local/include')
         # only change this for cross builds for 3.3, issues on Mageia
         if CROSS_COMPILING:
             self.add_cross_compiling_paths()
@@ -2154,18 +2148,6 @@
         ffi_lib = None
 
         ffi_inc_dirs = self.inc_dirs.copy()
-        if MACOS:
-            ffi_in_sdk = os.path.join(macosx_sdk_root(), "usr/include/ffi")
-
-            if not ffi_inc:
-                if os.path.exists(ffi_in_sdk):
-                    ext.extra_compile_args.append("-DUSING_APPLE_OS_LIBFFI=1")
-                    ffi_inc = ffi_in_sdk
-                    ffi_lib = 'ffi'
-                else:
-                    # OS X 10.5 comes with libffi.dylib; the include files are
-                    # in /usr/include/ffi
-                    ffi_inc_dirs.append('/usr/include/ffi')
 
         if not ffi_inc:
             found = find_file('ffi.h', [], ffi_inc_dirs)
