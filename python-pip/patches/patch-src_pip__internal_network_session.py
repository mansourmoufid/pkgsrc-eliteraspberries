$NetBSD$

--- src/pip/_internal/network/session.py.orig	2021-10-22 11:15:54.000000000 -0400
+++ src/pip/_internal/network/session.py	2021-11-28 11:20:22.000000000 -0500
@@ -278,9 +278,6 @@
         # possible conflicts with the base class.
         self.pip_trusted_origins: List[Tuple[str, Optional[int]]] = []
 
-        # Attach our User Agent to the request
-        self.headers["User-Agent"] = user_agent()
-
         # Attach our Authentication handler to the session
         self.auth = MultiDomainBasicAuth(index_urls=index_urls)
 
