$NetBSD$

--- src/pip/_internal/network/session.py.orig	2020-02-03 16:03:34.000000000 -0500
+++ src/pip/_internal/network/session.py	2020-02-03 16:03:59.000000000 -0500
@@ -237,9 +237,6 @@
         # possible conflicts with the base class.
         self.pip_trusted_origins = []  # type: List[Tuple[str, Optional[int]]]
 
-        # Attach our User Agent to the request
-        self.headers["User-Agent"] = user_agent()
-
         # Attach our Authentication handler to the session
         self.auth = MultiDomainBasicAuth(index_urls=index_urls)
 
