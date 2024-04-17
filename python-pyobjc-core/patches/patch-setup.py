$NetBSD$

--- setup.py.orig	2024-01-20 05:56:15
+++ setup.py	2024-04-17 15:40:57
@@ -67,7 +67,6 @@
 
 # CFLAGS for the objc._objc extension:
 CFLAGS = [
-    "-g",
     "-fexceptions",
     # Explicitly opt-out of ARC
     "-fno-objc-arc",
@@ -91,12 +90,7 @@
     # "-fsanitize=address", "-fsanitize=undefined", "-fno-sanitize=vptr",
     # "--analyze",
     "-Werror",
-    "-I/usr/include/ffi",
     "-fvisibility=hidden",
-    # "-O0",
-    "-g",
-    # "-O0",
-    "-O3",
     "-flto=thin",
     # XXX: Use object_path_lto (during linking?)
     "-UNDEBUG",
@@ -112,13 +106,9 @@
     "-framework",
     "Foundation",
     # "-fvisibility=protected",
-    "-g",
     "-lffi",
     # "-fsanitize=address", "-fsanitize=undefined", "-fno-sanitize=vptr",
     "-fvisibility=hidden",
-    # "-O0",
-    "-g",
-    "-O3",
     "-flto=thin",
     "-fexceptions",
 ]
@@ -612,9 +602,7 @@
 
         if self.sdk_root != "python":
             if "-isysroot" not in CFLAGS:
-                CFLAGS.extend(["-isysroot", self.sdk_root])
-                EXT_CFLAGS.extend(["-isysroot", self.sdk_root])
-                OBJC_LDFLAGS.extend(["-isysroot", self.sdk_root])
+                pass
 
         cflags = get_config_var("CFLAGS")
         if "-mno-fused-madd" in cflags:
