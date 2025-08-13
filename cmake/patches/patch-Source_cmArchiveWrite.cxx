--- Source/cmArchiveWrite.cxx.orig	2025-08-05 10:55:57
+++ Source/cmArchiveWrite.cxx	2025-08-13 16:03:16
@@ -19,8 +19,6 @@
 #include "cmsys/Directory.hxx"
 #include "cmsys/Encoding.hxx"
 #include "cmsys/FStream.hxx"
-
-#include "cm_get_date.h"
 
 #include "cmLocale.h"
 #include "cmStringAlgorithms.h"
@@ -343,14 +341,6 @@
     return false;
   }
   if (!this->MTime.empty()) {
-    time_t now;
-    time(&now);
-    time_t t = cm_get_date(now, this->MTime.c_str());
-    if (t == -1) {
-      this->Error = cmStrCat("unable to parse mtime '", this->MTime, '\'');
-      return false;
-    }
-    archive_entry_set_mtime(e, t, 0);
   } else {
     std::string source_date_epoch;
     cmSystemTools::GetEnv("SOURCE_DATE_EPOCH", source_date_epoch);
