$NetBSD$

--- macosx/tkMacOSXWm.c.orig	2018-01-12 21:06:34.000000000 -0500
+++ macosx/tkMacOSXWm.c	2018-01-12 21:06:46.000000000 -0500
@@ -5612,7 +5612,6 @@
     }
     TKContentView *contentView = [[TKContentView alloc]
 				     initWithFrame:NSZeroRect];
-    [window setColorSpace:[NSColorSpace deviceRGBColorSpace]];
     [window setContentView:contentView];
     [contentView release];
     [window setDelegate:NSApp];
