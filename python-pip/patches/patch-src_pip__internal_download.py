$NetBSD$

--- src/pip/_internal/download.py.orig	2018-06-27 06:38:51.000000000 -0400
+++ src/pip/_internal/download.py	2019-10-13 17:01:54.000000000 -0400
@@ -334,7 +334,6 @@
         super(PipSession, self).__init__(*args, **kwargs)
 
         # Attach our User Agent to the request
-        self.headers["User-Agent"] = user_agent()
 
         # Attach our Authentication handler to the session
         self.auth = MultiDomainBasicAuth()
