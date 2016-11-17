--- Objects/object.c.orig	2016-11-16 10:02:52.000000000 -0500
+++ Objects/object.c	2016-11-16 10:22:58.000000000 -0500
@@ -2335,27 +2327,6 @@
 Py_ssize_t (*_Py_abstract_hack)(PyObject *) = PyObject_Size;
 
 
-/* Python's malloc wrappers (see pymem.h) */
-
-void *
-PyMem_Malloc(size_t nbytes)
-{
-    return PyMem_MALLOC(nbytes);
-}
-
-void *
-PyMem_Realloc(void *p, size_t nbytes)
-{
-    return PyMem_REALLOC(p, nbytes);
-}
-
-void
-PyMem_Free(void *p)
-{
-    PyMem_FREE(p);
-}
-
-
 /* These methods are used to control infinite recursion in repr, str, print,
    etc.  Container objects that may recursively contain themselves,
    e.g. builtin dictionaries and lists, should use Py_ReprEnter() and
