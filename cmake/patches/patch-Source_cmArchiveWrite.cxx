$NetBSD$

--- Source/cmArchiveWrite.cxx.orig	2020-02-04 09:22:09.000000000 -0500
+++ Source/cmArchiveWrite.cxx	2020-02-28 12:59:43.000000000 -0500
@@ -4,7 +4,6 @@
 
 #include "cmLocale.h"
 #include "cmSystemTools.h"
-#include "cm_get_date.h"
 #include "cm_libarchive.h"
 #include "cmsys/Directory.hxx"
 #include "cmsys/Encoding.hxx"
@@ -254,16 +253,6 @@
     return false;
   }
   if (!this->MTime.empty()) {
-    time_t now;
-    time(&now);
-    time_t t = cm_get_date(now, this->MTime.c_str());
-    if (t == -1) {
-      this->Error = "unable to parse mtime '";
-      this->Error += this->MTime;
-      this->Error += "'";
-      return false;
-    }
-    archive_entry_set_mtime(e, t, 0);
   } else {
     std::string source_date_epoch;
     cmSystemTools::GetEnv("SOURCE_DATE_EPOCH", source_date_epoch);
