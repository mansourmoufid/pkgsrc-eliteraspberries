--- libImaging/Unpack.c.orig	2016-09-12 12:17:00.000000000 -0400
+++ libImaging/Unpack.c	2016-09-12 12:19:19.000000000 -0400
@@ -977,8 +977,10 @@
 {\
     int i;\
     OUTTYPE* out = (OUTTYPE*) out_;\
-    for (i = 0; i < pixels; i++, in += sizeof(INTYPE))\
+    for (i = 0; i < pixels; i++) {\
         out[i] = (OUTTYPE) ((INTYPE) GET);\
+        in += sizeof(INTYPE);\
+    }\
 }
 
 #define UNPACK(NAME, COPY, INTYPE, OUTTYPE)\
@@ -988,9 +990,10 @@
     OUTTYPE* out = (OUTTYPE*) out_;\
     INTYPE tmp_;\
     UINT8* tmp = (UINT8*) &tmp_;\
-    for (i = 0; i < pixels; i++, in += sizeof(INTYPE)) {\
+    for (i = 0; i < pixels; i++) {\
         COPY;\
         out[i] = (OUTTYPE) tmp_;\
+        in += sizeof(INTYPE);\
     }\
 }
 
