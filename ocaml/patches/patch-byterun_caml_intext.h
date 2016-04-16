$NetBSD$

--- byterun/caml/intext.h.orig	2015-04-12 09:03:05.000000000 +0000
+++ byterun/caml/intext.h
@@ -157,10 +157,10 @@ struct code_fragment {
   char digest_computed;
 };
 
-struct ext_table caml_code_fragments_table;
-
 /* </private> */
 
+CAMLextern struct ext_table caml_code_fragments_table;
+
 #ifdef __cplusplus
 }
 #endif
