--- pngpriv.h.orig	2016-11-11 15:56:19.000000000 -0500
+++ pngpriv.h	2016-11-11 15:57:00.000000000 -0500
@@ -533,8 +533,7 @@
 /* This implicitly assumes alignment is always to a power of 2. */
 #ifdef png_alignof
 #  define png_isaligned(ptr, type)\
-   (((type)((const char*)ptr-(const char*)0) & \
-   (type)(png_alignof(type)-1)) == 0)
+   (((size_t)ptr & (png_alignof(type)-1)) == 0)
 #else
 #  define png_isaligned(ptr, type) 0
 #endif
