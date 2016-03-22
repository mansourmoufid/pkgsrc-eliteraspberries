$NetBSD$

--- Objects/fileobject.c.orig	2015-12-05 19:47:16.000000000 +0000
+++ Objects/fileobject.c
@@ -466,7 +466,7 @@ close_the_file(PyFileObject *f)
 }
 
 PyObject *
-PyFile_FromFile(FILE *fp, char *name, char *mode, int (*close)(FILE *))
+PyFile_FromFile(FILE *fp, char *name, char *mode, int (*fclose)(FILE *))
 {
     PyFileObject *f;
     PyObject *o_name;
@@ -476,12 +476,12 @@ PyFile_FromFile(FILE *fp, char *name, ch
         return NULL;
     o_name = PyString_FromString(name);
     if (o_name == NULL) {
-        if (close != NULL && fp != NULL)
-            close(fp);
+        if (fclose != NULL && fp != NULL)
+            fclose(fp);
         Py_DECREF(f);
         return NULL;
     }
-    if (fill_file_fields(f, fp, o_name, mode, close) == NULL) {
+    if (fill_file_fields(f, fp, o_name, mode, fclose) == NULL) {
         Py_DECREF(f);
         Py_DECREF(o_name);
         return NULL;
