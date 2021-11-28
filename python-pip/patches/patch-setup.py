$NetBSD$

--- setup.py.orig	2021-10-22 11:15:54.000000000 -0400
+++ setup.py	2021-11-28 11:18:42.000000000 -0500
@@ -76,8 +76,6 @@
     entry_points={
         "console_scripts": [
             "pip=pip._internal.cli.main:main",
-            "pip{}=pip._internal.cli.main:main".format(sys.version_info[0]),
-            "pip{}.{}=pip._internal.cli.main:main".format(*sys.version_info[:2]),
         ],
     },
     zip_safe=False,
