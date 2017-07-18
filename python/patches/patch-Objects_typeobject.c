$NetBSD$

--- Objects/typeobject.c.orig	2016-12-17 15:05:07.000000000 -0500
+++ Objects/typeobject.c	2017-07-17 23:05:08.000000000 -0400
@@ -926,7 +926,8 @@
 
     /* Extract the type; we expect it to be a heap type */
     type = Py_TYPE(self);
-    assert(type->tp_flags & Py_TPFLAGS_HEAPTYPE);
+    if (!(type->tp_flags & Py_TPFLAGS_HEAPTYPE))
+        return;
 
     /* Test whether the type has GC exactly once */
 
@@ -2705,7 +2706,8 @@
     PyHeapTypeObject *et;
 
     /* Assert this is a heap-allocated type object */
-    assert(type->tp_flags & Py_TPFLAGS_HEAPTYPE);
+    if (!(type->tp_flags & Py_TPFLAGS_HEAPTYPE))
+        return;
     _PyObject_GC_UNTRACK(type);
     PyObject_ClearWeakRefs((PyObject *)type);
     et = (PyHeapTypeObject *)type;
