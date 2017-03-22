$NetBSD$

--- generic/tclNamesp.c.orig	2016-02-25 15:12:37.000000000 -0500
+++ generic/tclNamesp.c	2017-03-21 19:45:36.000000000 -0400
@@ -748,14 +748,13 @@
      * already exist in the parent namespace.
      */
 
-    if (
 #ifndef BREAK_NAMESPACE_COMPAT
-	Tcl_FindHashEntry(&parentPtr->childTable, simpleName) != NULL
+    if (Tcl_FindHashEntry(&parentPtr->childTable, simpleName) != NULL)
 #else
-	parentPtr->childTablePtr != NULL &&
-	Tcl_FindHashEntry(parentPtr->childTablePtr, simpleName) != NULL
+    if (parentPtr->childTablePtr != NULL &&
+	Tcl_FindHashEntry(parentPtr->childTablePtr, simpleName) != NULL)
 #endif
-    ) {
+    {
 	Tcl_SetObjResult(interp, Tcl_ObjPrintf(
 		"can't create namespace \"%s\": already exists", name));
 	Tcl_SetErrorCode(interp, "TCL", "OPERATION", "NAMESPACE",
@@ -2965,14 +2964,13 @@
 	if (strncmp(pattern, nsPtr->fullName, length) != 0) {
 	    goto searchDone;
 	}
-	if (
 #ifndef BREAK_NAMESPACE_COMPAT
-	    Tcl_FindHashEntry(&nsPtr->childTable, pattern+length) != NULL
+	if (Tcl_FindHashEntry(&nsPtr->childTable, pattern+length) != NULL)
 #else
-	    nsPtr->childTablePtr != NULL &&
-	    Tcl_FindHashEntry(nsPtr->childTablePtr, pattern+length) != NULL
+	if (nsPtr->childTablePtr != NULL &&
+	    Tcl_FindHashEntry(nsPtr->childTablePtr, pattern+length) != NULL)
 #endif
-	) {
+	{
 	    Tcl_ListObjAppendElement(interp, listPtr,
 		    Tcl_NewStringObj(pattern, -1));
 	}
