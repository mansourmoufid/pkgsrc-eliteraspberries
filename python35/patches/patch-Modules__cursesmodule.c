$NetBSD$

--- Modules/_cursesmodule.c.orig	2021-09-07 20:28:51.000000000 -0400
+++ Modules/_cursesmodule.c	2021-09-07 20:29:46.000000000 -0400
@@ -112,14 +112,9 @@
 #define CURSES_MODULE
 #include "py_curses.h"
 
-/*  These prototypes are in <term.h>, but including this header
-    #defines many common symbols (such as "lines") which breaks the
-    curses module in other ways.  So the code will just specify
-    explicit prototypes here. */
-extern int setupterm(char *,int,int *);
-#ifdef __sgi
 #include <term.h>
-#endif
+#undef lines
+#undef columns
 
 #ifdef HAVE_LANGINFO_H
 #include <langinfo.h>
