--- Source/cmCTest.cxx.orig	2025-08-05 10:55:57
+++ Source/cmCTest.cxx	2025-08-13 17:18:07
@@ -38,8 +38,6 @@
 #  include <unistd.h> // IWYU pragma: keep
 #endif
 
-#include "cm_get_date.h"
-
 #include "cmCMakePresetsGraph.h"
 #include "cmCTestBuildAndTest.h"
 #include "cmCTestScriptHandler.h"
@@ -203,50 +201,6 @@
   struct tm* lctime;
   time_t tctime = time(nullptr);
   lctime = gmtime(&tctime);
-  cmCTestLog(this, OUTPUT,
-             "Determine Nightly Start Time" << std::endl
-                                            << "   Specified time: " << str
-                                            << std::endl);
-  // Convert the nightly start time to seconds. The current date of
-  // the local machine is assumed. Consequently, nightlySeconds
-  // is the time at which the nightly dashboard was opened or
-  // will be opened on the date of the current client machine.
-  // As such, this time may be in the past or in the future.
-  char buf[1024];
-  std::snprintf(buf, sizeof(buf), "%d%02d%02d %s", lctime->tm_year + 1900,
-                lctime->tm_mon + 1, lctime->tm_mday, str.c_str());
-  time_t ntime = cm_get_date(tctime, buf);
-  cmCTestLog(this, DEBUG,
-             "   Get the nightly start time: " << ntime << std::endl);
-  tctime = time(nullptr);
-  cmCTestLog(this, DEBUG, "   Get the current time: " << tctime << std::endl);
-
-  int const dayLength = 24 * 60 * 60;
-  cmCTestLog(this, DEBUG, "Seconds: " << tctime << std::endl);
-  while (ntime > tctime) {
-    // If nightlySeconds is in the past, this is the current
-    // open dashboard, then return nightlySeconds.  If
-    // nightlySeconds is in the future, this is the next
-    // dashboard to be opened, so subtract 24 hours to get the
-    // time of the current open dashboard
-    ntime -= dayLength;
-    cmCTestLog(this, DEBUG, "Pick yesterday" << std::endl);
-    cmCTestLog(this, DEBUG,
-               "   Future time, subtract day: " << ntime << std::endl);
-  }
-  while (tctime > (ntime + dayLength)) {
-    ntime += dayLength;
-    cmCTestLog(this, DEBUG, "   Past time, add day: " << ntime << std::endl);
-  }
-  cmCTestLog(this, DEBUG, "nightlySeconds: " << ntime << std::endl);
-  cmCTestLog(this, DEBUG,
-             "   Current time: " << tctime << " Nightly time: " << ntime
-                                 << std::endl);
-  if (tomorrowtag) {
-    cmCTestLog(this, OUTPUT, "   Use future tag, Add a day" << std::endl);
-    ntime += dayLength;
-  }
-  lctime = gmtime(&ntime);
   return lctime;
 }
 
@@ -2764,17 +2718,6 @@
   snprintf(buf, sizeof(buf), "%d%02d%02d %s %+05i", lctime->tm_year + 1900,
            lctime->tm_mon + 1, lctime->tm_mday, time_str.c_str(),
            tzone_offset);
-
-  time_t stop_time = cm_get_date(current_time, buf);
-  if (stop_time == -1) {
-    this->Impl->StopTime = std::chrono::system_clock::time_point();
-    return;
-  }
-  this->Impl->StopTime = std::chrono::system_clock::from_time_t(stop_time);
-
-  if (stop_time < current_time) {
-    this->Impl->StopTime += std::chrono::hours(24);
-  }
 }
 
 cm::optional<unsigned int> cmCTest::GetRandomSeed() const
