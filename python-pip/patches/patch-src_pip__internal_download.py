$NetBSD$

--- src/pip/_internal/download.py.orig	2018-09-16 14:57:13.000000000 -0400
+++ src/pip/_internal/download.py	2018-09-16 14:57:21.000000000 -0400
@@ -333,9 +333,6 @@
 
         super(PipSession, self).__init__(*args, **kwargs)
 
-        # Attach our User Agent to the request
-        self.headers["User-Agent"] = user_agent()
-
         # Attach our Authentication handler to the session
         self.auth = MultiDomainBasicAuth()
 
