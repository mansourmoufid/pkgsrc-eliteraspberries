$NetBSD$

--- byterun/extern.c.orig	2015-04-12 09:03:39.000000000 +0000
+++ byterun/extern.c
@@ -75,6 +75,8 @@ static struct extern_item * extern_stack
 
 /* Forward declarations */
 
+CAMLexport struct ext_table caml_code_fragments_table;
+
 static void extern_out_of_memory(void);
 static void extern_invalid_argument(char *msg);
 static void extern_failwith(char *msg);
