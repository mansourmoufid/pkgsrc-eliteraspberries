--- Objects/setobject.c.orig	2016-09-01 19:52:27.000000000 -0400
+++ Objects/setobject.c	2016-09-01 19:52:58.000000000 -0400
@@ -46,7 +46,8 @@
 
 #define EMPTY_TO_MINSIZE(so) do {                               \
     memset((so)->smalltable, 0, sizeof((so)->smalltable));      \
-    (so)->used = (so)->fill = 0;                                \
+    (so)->used = 0;                                             \
+    (so)->fill = 0;                                             \
     INIT_NONZERO_SET_SLOTS(so);                                 \
     } while(0)
 
