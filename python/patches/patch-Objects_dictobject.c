--- Objects/dictobject.c.orig	2016-09-01 18:40:27.000000000 -0400
+++ Objects/dictobject.c	2016-09-01 18:41:23.000000000 -0400
@@ -214,7 +214,8 @@
 
 #define EMPTY_TO_MINSIZE(mp) do {                                       \
     memset((mp)->ma_smalltable, 0, sizeof((mp)->ma_smalltable));        \
-    (mp)->ma_used = (mp)->ma_fill = 0;                                  \
+    (mp)->ma_used = 0;                                                  \
+    (mp)->ma_fill = 0;                                                  \
     INIT_NONZERO_DICT_SLOTS(mp);                                        \
     } while(0)
 
