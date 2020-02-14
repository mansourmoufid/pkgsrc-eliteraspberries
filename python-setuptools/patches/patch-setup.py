$NetBSD$

--- setup.py.orig	2020-01-24 10:33:29.000000000 -0500
+++ setup.py	2020-01-24 10:33:44.000000000 -0500
@@ -35,6 +35,7 @@
 
 def _gen_console_scripts():
     yield "easy_install = setuptools.command.easy_install:main"
+    return
 
     # Gentoo distributions manage the python-version-specific scripts
     # themselves, so those platforms define an environment variable to
