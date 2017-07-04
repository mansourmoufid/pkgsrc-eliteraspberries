$NetBSD$

--- library/x509.c.orig	2017-06-27 16:46:37.000000000 -0400
+++ library/x509.c	2017-06-27 16:47:49.000000000 -0400
@@ -79,7 +79,7 @@
 #endif
 #endif
 
-#define CHECK(code) if( ( ret = code ) != 0 ){ return( ret ); }
+#define CHECK(code) ret = code; if( ret != 0 ){ return( ret ); }
 #define CHECK_RANGE(min, max, val) if( val < min || val > max ){ return( ret ); }
 
 /*
