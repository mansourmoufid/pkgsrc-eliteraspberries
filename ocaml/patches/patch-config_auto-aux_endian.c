$NetBSD$

--- config/auto-aux/endian.c.orig	2012-10-15 17:50:56.000000000 +0000
+++ config/auto-aux/endian.c
@@ -13,27 +13,15 @@
 
 #include "m.h"
 
-#ifndef ARCH_SIXTYFOUR
-long intval = 0x41424344L;
-char * bigendian = "ABCD";
-char * littleendian = "DCBA";
-#else
-long intval = 0x4142434445464748L;
-char * bigendian = "ABCDEFGH";
-char * littleendian = "HGFEDCBA";
-#endif
-
-main(void)
+int main(void)
 {
-  long n[2];
-  char * p;
-
-  n[0] = intval;
-  n[1] = 0;
-  p = (char *) n;
-  if (strcmp(p, bigendian) == 0)
-    exit(0);
-  if (strcmp(p, littleendian) == 0)
-    exit(1);
-  exit(2);
+  union {
+    unsigned long int i;
+    unsigned char c;
+  } x;
+  x.i = 1;
+  if (x.c == 1) {
+    return 1;
+  }
+  return 0;
 }
