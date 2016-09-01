--- src/dlmalloc.c.orig	2014-11-08 07:47:24.000000000 -0500
+++ src/dlmalloc.c	2016-09-01 16:18:08.000000000 -0400
@@ -3038,12 +3038,14 @@
   compute_tree_index(S, I);\
   H = treebin_at(M, I);\
   X->index = I;\
-  X->child[0] = X->child[1] = 0;\
+  X->child[0] = 0;\
+  X->child[1] = 0;\
   if (!treemap_is_marked(M, I)) {\
     mark_treemap(M, I);\
     *H = X;\
     X->parent = (tchunkptr)H;\
-    X->fd = X->bk = X;\
+    X->fd = X;\
+    X->bk = X;\
   }\
   else {\
     tchunkptr T = *H;\
@@ -3057,7 +3059,8 @@
         else if (RTCHECK(ok_address(M, C))) {\
           *C = X;\
           X->parent = T;\
-          X->fd = X->bk = X;\
+          X->fd = X;\
+          X->bk = X;\
           break;\
         }\
         else {\
@@ -3068,7 +3071,8 @@
       else {\
         tchunkptr F = T->fd;\
         if (RTCHECK(ok_address(M, T) && ok_address(M, F))) {\
-          T->fd = F->bk = X;\
+          T->fd = X;\
+          F->bk = X;\
           X->fd = F;\
           X->bk = T;\
           X->parent = 0;\
@@ -3121,7 +3125,8 @@
       tchunkptr* CP;\
       while ((*(CP = &(R->child[1])) != 0) ||\
              (*(CP = &(R->child[0])) != 0)) {\
-        R = *(RP = CP);\
+        RP = CP;\
+        R = *RP;\
       }\
       if (RTCHECK(ok_address(M, RP)))\
         *RP = 0;\
