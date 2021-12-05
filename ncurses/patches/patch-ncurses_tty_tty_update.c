$NetBSD$

--- ncurses/tty/tty_update.c.orig	2021-09-04 06:29:59.000000000 -0400
+++ ncurses/tty/tty_update.c	2021-12-05 14:17:41.115498369 -0500
@@ -128,7 +128,6 @@
 static void TransformLine(int const lineno);
 #endif
 
-#ifdef POSITION_DEBUG
 /****************************************************************************
  *
  * Debugging code.  Only works on ANSI-standard terminals.
@@ -139,6 +138,7 @@
 position_check(NCURSES_SP_DCLx int expected_y, int expected_x, const char *legend)
 /* check to see if the real cursor position matches the virtual */
 {
+#ifdef POSITION_DEBUG
     char buf[20];
     char *s;
     int y, x;
@@ -180,10 +180,8 @@
 	    _tracef("position matches OK in %s", legend);
 	}
     }
-}
-#else
-#define position_check(expected_y, expected_x, legend)	/* nothing */
 #endif /* POSITION_DEBUG */
+}
 
 /****************************************************************************
  *
