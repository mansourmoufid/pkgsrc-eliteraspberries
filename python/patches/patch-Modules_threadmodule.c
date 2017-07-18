$NetBSD$

--- Modules/threadmodule.c.orig	2017-07-17 20:58:13.000000000 -0400
+++ Modules/threadmodule.c	2017-07-17 20:57:49.000000000 -0400
@@ -125,6 +125,8 @@
     {NULL}              /* sentinel */
 };
 
+PyDoc_VAR(lock_doc);
+
 static PyTypeObject Locktype = {
     PyVarObject_HEAD_INIT(&PyType_Type, 0)
     "thread.lock",                      /*tp_name*/
@@ -147,7 +149,7 @@
     0,                                  /* tp_setattro */
     0,                                  /* tp_as_buffer */
     Py_TPFLAGS_HAVE_WEAKREFS,       /* tp_flags */
-    0,                                  /* tp_doc */
+    lock_doc,                           /* tp_doc */
     0,                                  /* tp_traverse */
     0,                                  /* tp_clear */
     0,                                  /* tp_richcompare */
@@ -919,7 +921,6 @@
     d = PyModule_GetDict(m);
     ThreadError = PyErr_NewException("thread.error", NULL, NULL);
     PyDict_SetItemString(d, "error", ThreadError);
-    Locktype.tp_doc = lock_doc;
     if (PyType_Ready(&Locktype) < 0)
         return;
     Py_INCREF(&Locktype);
