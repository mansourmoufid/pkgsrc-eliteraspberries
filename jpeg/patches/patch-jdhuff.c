$NetBSD$

--- jdhuff.c.orig	2017-07-04 16:02:59.000000000 -0400
+++ jdhuff.c	2017-07-04 16:04:36.000000000 -0400
@@ -181,7 +181,8 @@
   } else { \
     nb = HUFF_LOOKAHEAD+1; \
 slowlabel: \
-    if ((result=jpeg_huff_decode(&state,get_buffer,bits_left,htbl,nb)) < 0) \
+    result=jpeg_huff_decode(&state,get_buffer,bits_left,htbl,nb); \
+    if (result < 0) \
 	{ failaction; } \
     get_buffer = state.get_buffer; bits_left = state.bits_left; \
   } \
