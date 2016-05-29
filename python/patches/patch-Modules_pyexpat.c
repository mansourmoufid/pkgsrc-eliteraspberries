$NetBSD$

--- Modules/pyexpat.c.orig	2015-12-05 19:47:15.000000000 +0000
+++ Modules/pyexpat.c
@@ -96,7 +96,7 @@ struct HandlerInfo {
     PyObject *nameobj;
 };
 
-static struct HandlerInfo handler_info[64];
+static struct HandlerInfo handler_info[];
 
 /* Set an integer attribute on the error object; return true on success,
  * false on an exception.
