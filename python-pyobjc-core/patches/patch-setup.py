--- setup.py.orig	2022-04-11 04:03:15.000000000 -0400
+++ setup.py	2022-08-25 14:36:08.000000000 -0400
@@ -67,7 +67,6 @@
 
 # CFLAGS for the objc._objc extension:
 CFLAGS = [
-    "-g",
     "-fexceptions",
     # Explicitly opt-out of ARC
     "-fno-objc-arc",
@@ -86,13 +85,7 @@
     "-Wshorten-64-to-32",
     # "-fsanitize=address", "-fsanitize=undefined", "-fno-sanitize=vptr",
     # "--analyze",
-    "-Werror",
-    "-I/usr/include/ffi",
     "-fvisibility=hidden",
-    # "-O0",
-    "-g",
-    "-O3",
-    "-flto=thin",
 ]
 
 # CFLAGS for other (test) extensions:
@@ -105,14 +98,9 @@
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
-    "-flto=thin",
 ]
 
 
@@ -583,9 +571,10 @@
 
         if self.sdk_root != "python":
             if "-isysroot" not in CFLAGS:
-                CFLAGS.extend(["-isysroot", self.sdk_root])
-                EXT_CFLAGS.extend(["-isysroot", self.sdk_root])
-                OBJC_LDFLAGS.extend(["-isysroot", self.sdk_root])
+                # CFLAGS.extend(["-isysroot", self.sdk_root])
+                # EXT_CFLAGS.extend(["-isysroot", self.sdk_root])
+                # OBJC_LDFLAGS.extend(["-isysroot", self.sdk_root])
+                pass
 
         cflags = get_config_var("CFLAGS")
         if "-mno-fused-madd" in cflags:
