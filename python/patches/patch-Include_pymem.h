$NetBSD$

--- Include/pymem.h.orig	2016-12-17 15:05:05.000000000 -0500
+++ Include/pymem.h	2017-05-21 12:00:24.000000000 -0400
@@ -49,9 +49,9 @@
    performed on failure (no exception is set, no warning is printed, etc).
 */
 
-PyAPI_FUNC(void *) PyMem_Malloc(size_t);
-PyAPI_FUNC(void *) PyMem_Realloc(void *, size_t);
-PyAPI_FUNC(void) PyMem_Free(void *);
+#define PyMem_Malloc	malloc
+#define PyMem_Realloc	realloc
+#define PyMem_Free	free
 
 /* Starting from Python 1.6, the wrappers Py_{Malloc,Realloc,Free} are
    no longer supported. They used to call PyErr_NoMemory() on failure. */
@@ -59,9 +59,9 @@
 /* Macros. */
 #ifdef PYMALLOC_DEBUG
 /* Redirect all memory operations to Python's debugging allocator. */
-#define PyMem_MALLOC		_PyMem_DebugMalloc
-#define PyMem_REALLOC		_PyMem_DebugRealloc
-#define PyMem_FREE		_PyMem_DebugFree
+#define PyMem_MALLOC	malloc
+#define PyMem_REALLOC	realloc
+#define PyMem_FREE	free
 
 #else	/* ! PYMALLOC_DEBUG */
 
@@ -71,11 +71,9 @@
    pymalloc. To solve these problems, allocate an extra byte. */
 /* Returns NULL to indicate error if a negative size or size larger than
    Py_ssize_t can represent is supplied.  Helps prevents security holes. */
-#define PyMem_MALLOC(n)		((size_t)(n) > (size_t)PY_SSIZE_T_MAX ? NULL \
-				: malloc((n) ? (n) : 1))
-#define PyMem_REALLOC(p, n)	((size_t)(n) > (size_t)PY_SSIZE_T_MAX  ? NULL \
-				: realloc((p), (n) ? (n) : 1))
-#define PyMem_FREE		free
+#define PyMem_MALLOC	malloc
+#define PyMem_REALLOC	realloc
+#define PyMem_FREE	free
 
 #endif	/* PYMALLOC_DEBUG */
 
@@ -89,12 +87,8 @@
  * overflow checking is always done.
  */
 
-#define PyMem_New(type, n) \
-  ( ((size_t)(n) > PY_SSIZE_T_MAX / sizeof(type)) ? NULL :	\
-	( (type *) PyMem_Malloc((n) * sizeof(type)) ) )
-#define PyMem_NEW(type, n) \
-  ( ((size_t)(n) > PY_SSIZE_T_MAX / sizeof(type)) ? NULL :	\
-	( (type *) PyMem_MALLOC((n) * sizeof(type)) ) )
+#define PyMem_New(type, n) calloc(n, sizeof(type))
+#define PyMem_NEW(type, n) calloc(n, sizeof(type))
 
 /*
  * The value of (p) is always clobbered by this macro regardless of success.
@@ -102,18 +96,14 @@
  * error if so.  This means the original value of (p) MUST be saved for the
  * caller's memory error handler to not lose track of it.
  */
-#define PyMem_Resize(p, type, n) \
-  ( (p) = ((size_t)(n) > PY_SSIZE_T_MAX / sizeof(type)) ? NULL :	\
-	(type *) PyMem_Realloc((p), (n) * sizeof(type)) )
-#define PyMem_RESIZE(p, type, n) \
-  ( (p) = ((size_t)(n) > PY_SSIZE_T_MAX / sizeof(type)) ? NULL :	\
-	(type *) PyMem_REALLOC((p), (n) * sizeof(type)) )
+#define PyMem_Resize(p, type, n) p = realloc(p, n * sizeof(type))
+#define PyMem_RESIZE(p, type, n) p = realloc(p, n * sizeof(type))
 
 /* PyMem{Del,DEL} are left over from ancient days, and shouldn't be used
  * anymore.  They're just confusing aliases for PyMem_{Free,FREE} now.
  */
-#define PyMem_Del		PyMem_Free
-#define PyMem_DEL		PyMem_FREE
+#define PyMem_Del free
+#define PyMem_DEL free
 
 #ifdef __cplusplus
 }
