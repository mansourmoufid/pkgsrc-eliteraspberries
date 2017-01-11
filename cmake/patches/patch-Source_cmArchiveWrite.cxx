--- Source/cmArchiveWrite.cxx.orig	2017-01-18 20:14:58.000000000 -0500
+++ Source/cmArchiveWrite.cxx	2017-01-18 20:15:19.000000000 -0500
@@ -4,7 +4,6 @@
 
 #include "cmLocale.h"
 #include "cmSystemTools.h"
-#include "cm_get_date.h"
 #include <cm_libarchive.h>
 #include <cmsys/Directory.hxx>
 #include <cmsys/Encoding.hxx>
@@ -232,18 +231,6 @@
     this->Error += cm_archive_error_string(this->Disk);
     return false;
   }
-  if (!this->MTime.empty()) {
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
-  }
 
   // manages the uid/guid of the entry (if any)
   if (this->Uid.IsSet() && this->Gid.IsSet()) {
