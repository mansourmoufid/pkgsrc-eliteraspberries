--- include/mbedtls/ssl.h.orig	2016-10-03 00:00:35.000000000 -0400
+++ include/mbedtls/ssl.h	2016-10-03 00:02:58.000000000 -0400
@@ -55,6 +55,12 @@
 #include <time.h>
 #endif
 
+#if defined(MBEDTLS_PLATFORM_C)
+#include "mbedtls/platform.h"
+#else
+#define mbedtls_time_t time_t
+#endif
+
 /*
  * SSL Error codes
  */
