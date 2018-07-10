$NetBSD$

--- macosx/tkMacOSXXStubs.c.orig	2018-01-30 12:22:13.000000000 -0500
+++ macosx/tkMacOSXXStubs.c	2018-01-30 12:22:19.000000000 -0500
@@ -175,7 +175,7 @@
     {
 	int major, minor, patch;
 
-#if MAC_OS_X_VERSION_MIN_REQUIRED < 1080
+#if MAC_OS_X_VERSION_MIN_REQUIRED < 101000
 	Gestalt(gestaltSystemVersionMajor, (SInt32*)&major);
 	Gestalt(gestaltSystemVersionMinor, (SInt32*)&minor);
 	Gestalt(gestaltSystemVersionBugFix, (SInt32*)&patch);
