$NetBSD$

--- Modules/_decimal/libmpdec/mpdecimal.h.orig	2022-03-16 08:22:54.000000000 -0400
+++ Modules/_decimal/libmpdec/mpdecimal.h	2022-08-24 15:44:34.000000000 -0400
@@ -135,7 +135,7 @@
   #elif defined(__x86_64__)
     #define CONFIG_64
     #define ASM
-  #elif defined(__arm64__)
+  #elif defined(__aarch64__) || defined(__arm64__)
     #define CONFIG_64
     #define ANSI
   #else
