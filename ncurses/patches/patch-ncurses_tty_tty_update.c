$NetBSD$

--- ncurses/tty/tty_update.c.orig	2014-08-23 15:25:18.000000000 -0400
+++ ncurses/tty/tty_update.c	2017-04-11 15:29:01.000000000 -0400
@@ -125,17 +125,11 @@
 static void TransformLine(int const lineno);
 #endif
 
-#ifdef POSITION_DEBUG
-/****************************************************************************
- *
- * Debugging code.  Only works on ANSI-standard terminals.
- *
- ****************************************************************************/
-
 static void
 position_check(NCURSES_SP_DCLx int expected_y, int expected_x, char *legend)
 /* check to see if the real cursor position matches the virtual */
 {
+#ifdef POSITION_DEBUG
     char buf[20];
     char *s;
     int y, x;
@@ -177,10 +171,8 @@
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
