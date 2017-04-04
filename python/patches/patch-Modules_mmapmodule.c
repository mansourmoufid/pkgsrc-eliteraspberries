$NetBSD$

--- Modules/mmapmodule.c.orig	2017-04-02 15:58:49.000000000 -0400
+++ Modules/mmapmodule.c	2017-04-02 16:06:20.000000000 -0400
@@ -1158,6 +1158,12 @@
                             "mmap invalid access parameter.");
     }
 
+#ifdef PROT_EXEC
+    if (prot & PROT_EXEC)
+        return PyErr_Format(PyExc_ValueError,
+                            "mmap invalid memory protection parameter.");
+#endif
+
 #ifdef __APPLE__
     /* Issue #11277: fsync(2) is not enough on OS X - a special, OS X specific
        fcntl(2) is necessary to force DISKSYNC and get around mmap(2) bug */
@@ -1480,9 +1484,6 @@
         return;
     PyDict_SetItemString(dict, "error", mmap_module_error);
     PyDict_SetItemString(dict, "mmap", (PyObject*) &mmap_object_type);
-#ifdef PROT_EXEC
-    setint(dict, "PROT_EXEC", PROT_EXEC);
-#endif
 #ifdef PROT_READ
     setint(dict, "PROT_READ", PROT_READ);
 #endif
