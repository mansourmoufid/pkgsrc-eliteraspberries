$NetBSD$

--- Parser/printgrammar.c.orig	2017-07-16 12:43:33.000000000 -0400
+++ Parser/printgrammar.c	2017-07-16 12:43:55.000000000 -0400
@@ -49,7 +49,7 @@
 
     s = d->d_state;
     for (j = 0; j < d->d_nstates; j++, s++) {
-        fprintf(fp, "static arc arcs_%d_%d[%d] = {\n",
+        fprintf(fp, "static const arc arcs_%d_%d[%d] = {\n",
             i, j, s->s_narcs);
         a = s->s_arc;
         for (k = 0; k < s->s_narcs; k++, a++)
@@ -68,7 +68,7 @@
     d = g->g_dfa;
     for (i = 0; i < g->g_ndfas; i++, d++) {
         printarcs(i, d, fp);
-        fprintf(fp, "static state states_%d[%d] = {\n",
+        fprintf(fp, "static const state states_%d[%d] = {\n",
             i, d->d_nstates);
         s = d->d_state;
         for (j = 0; j < d->d_nstates; j++, s++)
@@ -85,7 +85,7 @@
     int i, j;
 
     printstates(g, fp);
-    fprintf(fp, "static dfa dfas[%d] = {\n", g->g_ndfas);
+    fprintf(fp, "static const dfa dfas[%d] = {\n", g->g_ndfas);
     d = g->g_dfa;
     for (i = 0; i < g->g_ndfas; i++, d++) {
         fprintf(fp, "    {%d, \"%s\", %d, %d, states_%d,\n",
@@ -104,7 +104,7 @@
     label *l;
     int i;
 
-    fprintf(fp, "static label labels[%d] = {\n", g->g_ll.ll_nlabels);
+    fprintf(fp, "static const label labels[%d] = {\n", g->g_ll.ll_nlabels);
     l = g->g_ll.ll_label;
     for (i = g->g_ll.ll_nlabels; --i >= 0; l++) {
         if (l->lb_str == NULL)
