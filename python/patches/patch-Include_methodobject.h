$NetBSD$

--- Include/methodobject.h.orig	2017-05-21 15:44:55.000000000 -0400
+++ Include/methodobject.h	2017-05-21 15:49:23.000000000 -0400
@@ -35,11 +35,10 @@
 PyAPI_FUNC(PyObject *) PyCFunction_Call(PyObject *, PyObject *, PyObject *);
 
 struct PyMethodDef {
-    const char	*ml_name;	/* The name of the built-in function/method */
-    PyCFunction  ml_meth;	/* The C function that implements it */
-    int		 ml_flags;	/* Combination of METH_xxx flags, which mostly
-				   describe the args expected by the C func */
-    const char	*ml_doc;	/* The __doc__ attribute, or NULL */
+    const char *const ml_name;
+    const PyCFunction ml_meth;
+    const int ml_flags;
+    const char *const ml_doc;
 };
 typedef struct PyMethodDef PyMethodDef;
 
