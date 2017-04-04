$NetBSD$

--- Modules/cjkcodecs/cjkcodecs.h.orig	2016-10-30 11:54:40.000000000 -0400
+++ Modules/cjkcodecs/cjkcodecs.h	2016-10-30 12:12:58.000000000 -0400
@@ -60,8 +60,10 @@
     DBCHAR code;
 };
 
-static const MultibyteCodec *codec_list;
-static const struct dbcs_map *mapping_list;
+static const MultibyteCodec _codec_list[];
+static const struct dbcs_map _mapping_list[];
+static const MultibyteCodec *codec_list = _codec_list;
+static const struct dbcs_map *mapping_list = _mapping_list;
 
 #define CODEC_INIT(encoding)                                            \
     static int encoding##_codec_init(const void *config)
@@ -205,10 +207,7 @@
 #define MAPPING_ENCONLY(enc) {#enc, (void*)enc##_encmap, NULL},
 #define MAPPING_DECONLY(enc) {#enc, NULL, (void*)enc##_decmap},
 #define MAPPING_ENCDEC(enc) {#enc, (void*)enc##_encmap, (void*)enc##_decmap},
-#define END_MAPPINGS_LIST                               \
-    {"", NULL, NULL} };                                 \
-    static const struct dbcs_map *mapping_list =        \
-        (const struct dbcs_map *)_mapping_list;
+#define END_MAPPINGS_LIST {"", NULL, NULL} };
 
 #define BEGIN_CODECS_LIST static const MultibyteCodec _codec_list[] = {
 #define _STATEFUL_METHODS(enc)          \
@@ -234,10 +233,7 @@
     enc##_codec_init,                   \
     _STATELESS_METHODS(enc)             \
 },
-#define END_CODECS_LIST                                 \
-    {"", NULL,} };                                      \
-    static const MultibyteCodec *codec_list =           \
-        (const MultibyteCodec *)_codec_list;
+#define END_CODECS_LIST {"", NULL,} };
 
 static PyObject *
 getmultibytecodec(void)
