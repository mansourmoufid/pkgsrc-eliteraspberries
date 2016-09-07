--- libImaging/GifDecode.c.orig	2016-09-06 21:11:31.000000000 -0400
+++ libImaging/GifDecode.c	2016-09-06 21:13:11.000000000 -0400
@@ -36,17 +36,20 @@
     while (state->y >= state->ysize)\
 	switch (context->interlace) {\
 	case 1:\
-	    context->repeat = state->y = 4;\
+	    context->repeat = 4;\
+	    state->y = 4;\
 	    context->interlace = 2;\
 	    break;\
 	case 2:\
 	    context->step = 4;\
-	    context->repeat = state->y = 2;\
+	    context->repeat = 2;\
+	    state->y = 2;\
 	    context->interlace = 3;\
 	    break;\
 	case 3:\
 	    context->step = 2;\
-	    context->repeat = state->y = 1;\
+	    context->repeat = 1;\
+	    state->y = 1;\
 	    context->interlace = 0;\
 	    break;\
 	default:\
