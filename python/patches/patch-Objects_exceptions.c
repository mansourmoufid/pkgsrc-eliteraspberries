$NetBSD$

--- Objects/exceptions.c.orig	2017-07-17 21:25:17.000000000 -0400
+++ Objects/exceptions.c	2017-07-17 21:25:56.000000000 -0400
@@ -418,7 +418,7 @@
  * include it and not look strange.
  */
 #define SimpleExtendsException(EXCBASE, EXCNAME, EXCDOC) \
-static PyTypeObject _PyExc_ ## EXCNAME = { \
+static const PyTypeObject _PyExc_ ## EXCNAME = { \
     PyObject_HEAD_INIT(NULL) \
     0, \
     EXC_MODULE_NAME # EXCNAME, \
@@ -434,7 +434,7 @@
 PyObject *PyExc_ ## EXCNAME = (PyObject *)&_PyExc_ ## EXCNAME
 
 #define MiddlingExtendsException(EXCBASE, EXCNAME, EXCSTORE, EXCDOC) \
-static PyTypeObject _PyExc_ ## EXCNAME = { \
+static const PyTypeObject _PyExc_ ## EXCNAME = { \
     PyObject_HEAD_INIT(NULL) \
     0, \
     EXC_MODULE_NAME # EXCNAME, \
@@ -450,7 +450,7 @@
 PyObject *PyExc_ ## EXCNAME = (PyObject *)&_PyExc_ ## EXCNAME
 
 #define ComplexExtendsException(EXCBASE, EXCNAME, EXCSTORE, EXCDEALLOC, EXCMETHODS, EXCMEMBERS, EXCSTR, EXCDOC) \
-static PyTypeObject _PyExc_ ## EXCNAME = { \
+static const PyTypeObject _PyExc_ ## EXCNAME = { \
     PyObject_HEAD_INIT(NULL) \
     0, \
     EXC_MODULE_NAME # EXCNAME, \
