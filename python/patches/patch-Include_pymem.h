--- Include/pymem.h.orig	2017-01-21 14:42:53.000000000 -0500
+++ Include/pymem.h	2017-01-21 14:43:21.000000000 -0500
@@ -39,20 +39,6 @@
  * ====================
  */
 
-/* Functions
-
-   Functions supplying platform-independent semantics for malloc/realloc/
-   free.  These functions make sure that allocating 0 bytes returns a distinct
-   non-NULL pointer (whenever possible -- if we're flat out of memory, NULL
-   may be returned), even if the platform malloc and realloc don't.
-   Returned pointers must be checked for NULL explicitly.  No action is
-   performed on failure (no exception is set, no warning is printed, etc).
-*/
-
-PyAPI_FUNC(void *) PyMem_Malloc(size_t);
-PyAPI_FUNC(void *) PyMem_Realloc(void *, size_t);
-PyAPI_FUNC(void) PyMem_Free(void *);
-
 /* Starting from Python 1.6, the wrappers Py_{Malloc,Realloc,Free} are
    no longer supported. They used to call PyErr_NoMemory() on failure. */
 
