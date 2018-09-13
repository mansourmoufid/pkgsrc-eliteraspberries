$NetBSD$

--- src/thread/pthread/SDL_systhread.c.orig	2018-09-13 09:19:11.000000000 -0400
+++ src/thread/pthread/SDL_systhread.c	2018-09-13 09:20:22.000000000 -0400
@@ -20,6 +20,7 @@
 */
 
 #include "../../SDL_internal.h"
+#include "SDL_platform.h"
 
 #include <pthread.h>
 
@@ -43,7 +44,6 @@
 #endif
 #endif
 
-#include "SDL_platform.h"
 #include "SDL_thread.h"
 #include "../SDL_thread_c.h"
 #include "../SDL_systhread.h"
