$NetBSD$

--- version.c.orig	2017-07-03 22:22:10.000000000 -0400
+++ version.c	2017-07-03 22:22:24.000000000 -0400
@@ -31,4 +31,4 @@
 #include "gmp.h"
 #include "gmp-impl.h"
 
-const char * const gmp_version = VERSION;
+const char gmp_version[] = VERSION;
