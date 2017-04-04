$NetBSD$

--- Python/bltinmodule.c.orig	2017-04-02 18:36:49.000000000 -0400
+++ Python/bltinmodule.c	2017-04-02 18:52:44.000000000 -0400
@@ -926,7 +926,7 @@
 static PyObject *
 builtin_id(PyObject *self, PyObject *v)
 {
-    return PyLong_FromVoidPtr(v);
+    return PyLong_FromSize_t(((size_t) v) * 4294967291 + 3);
 }
 
 PyDoc_STRVAR(id_doc,
