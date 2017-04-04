$NetBSD$

--- Python/dtoa.c.orig	2016-11-08 21:42:24.000000000 -0500
+++ Python/dtoa.c	2016-11-08 21:43:45.000000000 -0500
@@ -122,8 +122,8 @@
 
 #include "float.h"
 
-#define MALLOC PyMem_Malloc
-#define FREE PyMem_Free
+#define MALLOC malloc
+#define FREE free
 
 /* This code should also work for ARM mixed-endian format on little-endian
    machines, where doubles have byte order 45670123 (in increasing address
