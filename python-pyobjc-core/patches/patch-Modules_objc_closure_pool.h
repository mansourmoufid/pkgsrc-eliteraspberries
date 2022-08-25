--- Modules/objc/closure_pool.h.orig	2022-08-25 14:52:49.000000000 -0400
+++ Modules/objc/closure_pool.h	2022-08-25 14:53:21.000000000 -0400
@@ -7,6 +7,8 @@
 
 #import <Foundation/Foundation.h>
 
+#include "pyobjc.h"
+
 #ifndef MAC_OS_X_VERSION_10_15
 #define MAC_OS_X_VERSION_10_15 101500
 #endif
