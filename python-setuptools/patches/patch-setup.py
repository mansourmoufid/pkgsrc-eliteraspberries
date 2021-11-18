$NetBSD$

--- setup.py.orig	2021-11-17 22:24:53.000000000 -0500
+++ setup.py	2021-11-17 22:25:06.000000000 -0500
@@ -35,6 +35,7 @@
 
 def _gen_console_scripts():
     yield "easy_install = setuptools.command.easy_install:main"
+    return
 
     # Gentoo distributions manage the python-version-specific scripts
     # themselves, so those platforms define an environment variable to
