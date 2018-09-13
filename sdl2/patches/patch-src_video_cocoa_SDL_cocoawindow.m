$NetBSD$

--- src/video/cocoa/SDL_cocoawindow.m.orig	2018-09-12 23:58:48.000000000 -0400
+++ src/video/cocoa/SDL_cocoawindow.m	2018-09-12 23:59:19.000000000 -0400
@@ -22,6 +22,7 @@
 
 #if SDL_VIDEO_DRIVER_COCOA
 
+#include <AvailabilityMacros.h>
 #if MAC_OS_X_VERSION_MAX_ALLOWED < 1070
 # error SDL for Mac OS X must be built with a 10.7 SDK or above.
 #endif /* MAC_OS_X_VERSION_MAX_ALLOWED < 1070 */
