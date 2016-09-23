--- Source/kwsys/MD5.c.orig	2016-09-23 09:43:04.000000000 -0400
+++ Source/kwsys/MD5.c	2016-09-23 09:44:57.000000000 -0400
@@ -213,7 +213,7 @@
              * On little-endian machines, we can process properly aligned
              * data without copying it.
              */
-            if (!((data - (const md5_byte_t *)0) & 3)) {
+            if ((size_t) data % sizeof(md5_word_t) == 0) {
                 /* data are properly aligned */
                 X = (const md5_word_t *)data;
             } else {
