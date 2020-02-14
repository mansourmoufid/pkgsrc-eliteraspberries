$NetBSD$

--- setup.py.orig	2020-02-03 15:57:03.000000000 -0500
+++ setup.py	2020-02-03 15:57:16.000000000 -0500
@@ -75,10 +75,6 @@
     entry_points={
         "console_scripts": [
             "pip=pip._internal.cli.main:main",
-            "pip{}=pip._internal.cli.main:main".format(sys.version_info[0]),
-            "pip{}.{}=pip._internal.cli.main:main".format(
-                *sys.version_info[:2]
-            ),
         ],
     },
 
