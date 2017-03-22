$NetBSD$

--- generic/tclExecute.c.orig	2017-03-21 19:42:59.000000000 -0400
+++ generic/tclExecute.c	2017-03-21 19:44:02.000000000 -0400
@@ -5427,13 +5427,12 @@
 		} else {
 		    s1 = (char *) Tcl_GetUnicode(valuePtr);
 		    s2 = (char *) Tcl_GetUnicode(value2Ptr);
-		    if (
 #ifdef WORDS_BIGENDIAN
-			1
+		    if (1)
 #else
-			checkEq
+		    if (checkEq)
 #endif
-			) {
+		    {
 			memCmpFn = memcmp;
 			s1len *= sizeof(Tcl_UniChar);
 			s2len *= sizeof(Tcl_UniChar);
