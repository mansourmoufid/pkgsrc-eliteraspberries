$NetBSD$

--- src/gzip/rules.mk.orig	2017-05-13 19:48:52.000000000 -0400
+++ src/gzip/rules.mk	2017-05-13 19:49:11.000000000 -0400
@@ -39,21 +39,7 @@
 # However, it doesn't harm if we add everything as a dependency
 # unconditionally.
 #
-GZIP_DRV_SRCS := $(GZIP_DIR)/adler32.c  \
-                 $(GZIP_DIR)/ftzconf.h  \
-                 $(GZIP_DIR)/infblock.c \
-                 $(GZIP_DIR)/infblock.h \
-                 $(GZIP_DIR)/infcodes.c \
-                 $(GZIP_DIR)/infcodes.h \
-                 $(GZIP_DIR)/inffixed.h \
-                 $(GZIP_DIR)/inflate.c  \
-                 $(GZIP_DIR)/inftrees.c \
-                 $(GZIP_DIR)/inftrees.h \
-                 $(GZIP_DIR)/infutil.c  \
-                 $(GZIP_DIR)/infutil.h  \
-                 $(GZIP_DIR)/zlib.h     \
-                 $(GZIP_DIR)/zutil.c    \
-                 $(GZIP_DIR)/zutil.h
+GZIP_DRV_SRCS := $(GZIP_DIR)/ftzconf.h
 
 
 # gzip driver object(s)
