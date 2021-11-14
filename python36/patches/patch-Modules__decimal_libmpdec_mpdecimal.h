$NetBSD$

--- Modules/_decimal/libmpdec/mpdecimal.h.orig	2021-09-07 21:34:57.000000000 -0400
+++ Modules/_decimal/libmpdec/mpdecimal.h	2021-09-07 21:35:18.000000000 -0400
@@ -139,6 +139,9 @@
   #elif defined(__x86_64__)
     #define CONFIG_64
     #define ASM
+  #elif defined(__aarch64__)
+    #define CONFIG_64
+    #define ANSI
   #else
     #error "unknown architecture for universal build."
   #endif
