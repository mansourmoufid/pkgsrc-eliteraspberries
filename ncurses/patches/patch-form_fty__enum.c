$NetBSD$

--- form/fty_enum.c.orig	2010-05-01 21:11:07.000000000 +0000
+++ form/fty_enum.c
@@ -193,7 +193,7 @@ Free_Enum_Type(void *argp)
 {
   if (argp)
     {
-      const enumARG *ap = (const enumARG *)argp;
+      enumARG *ap = argp;
 
       if (ap->kwds && ap->count > 0)
 	{
