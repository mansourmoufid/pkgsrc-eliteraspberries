--- Modules/_decimal/libmpdec/mpdecimal.h.orig	2025-08-11 09:42:28
+++ Modules/_decimal/libmpdec/mpdecimal.h	2025-08-11 09:43:01
@@ -121,7 +121,7 @@
   #elif defined(__x86_64__)
     #define CONFIG_64
     #define ASM
-  #elif defined(__arm64__)
+  #elif defined(__aarch64__) || defined(__arm64__)
     #define CONFIG_64
     #define ANSI
   #else
