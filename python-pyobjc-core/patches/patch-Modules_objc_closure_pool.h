$NetBSD$

--- Modules/objc/closure_pool.h.orig	2024-04-17 11:34:52
+++ Modules/objc/closure_pool.h	2024-04-17 11:35:17
@@ -7,6 +7,8 @@
 
 #import <Foundation/Foundation.h>
 
+#include "pyobjc.h"
+
 #ifndef MAC_OS_X_VERSION_10_15
 #define MAC_OS_X_VERSION_10_15 101500
 #endif
