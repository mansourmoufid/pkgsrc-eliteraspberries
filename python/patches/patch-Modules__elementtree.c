$NetBSD$

--- Modules/_elementtree.c.orig	2017-05-21 19:39:37.000000000 -0400
+++ Modules/_elementtree.c	2017-05-21 19:41:43.000000000 -0400
@@ -1514,18 +1514,7 @@
 
     {"__copy__", (PyCFunction) element_copy, METH_VARARGS},
     {"__deepcopy__", (PyCFunction) element_deepcopy, METH_VARARGS},
-
-    /* Some 2.3 and 2.4 versions do not handle the __copy__ method on
-       C objects correctly, so we have to fake it using a __reduce__-
-       based hack (see the element_reduce implementation above for
-       details). */
-
-    /* The behaviour has been changed in 2.3.5 and 2.4.1, so we're
-       using a runtime test to figure out if we need to fake things
-       or now (see the init code below).  The following entry is
-       enabled only if the hack is needed. */
-
-    {"!__reduce__", (PyCFunction) element_reduce, METH_VARARGS},
+    {"__reduce__", (PyCFunction) element_reduce, METH_VARARGS},
 
     {NULL, NULL}
 };
@@ -3077,19 +3066,6 @@
         return;
 
     elementpath_obj = PyDict_GetItemString(g, "ElementPath");
-
-    elementtree_copyelement_obj = PyDict_GetItemString(g, "copyelement");
-    if (elementtree_copyelement_obj) {
-        /* reduce hack needed; enable reduce method */
-        PyMethodDef* mp;
-        for (mp = element_methods; mp->ml_name; mp++)
-            if (mp->ml_meth == (PyCFunction) element_reduce) {
-                mp->ml_name = "__reduce__";
-                break;
-            }
-    } else
-        PyErr_Clear();
-
     elementtree_deepcopy_obj = PyDict_GetItemString(g, "deepcopy");
     elementtree_iter_obj = PyDict_GetItemString(g, "iter");
     elementtree_itertext_obj = PyDict_GetItemString(g, "itertext");
