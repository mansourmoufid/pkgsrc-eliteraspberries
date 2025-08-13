--- Modules/CMakeCInformation.cmake.orig	2025-08-05 10:55:57
+++ Modules/CMakeCInformation.cmake	2025-08-13 13:08:56
@@ -91,7 +91,7 @@
   set(CMAKE_USER_MAKE_RULES_OVERRIDE_C "${_override}")
 endif()
 
-set(CMAKE_C_FLAGS_INIT "$ENV{CFLAGS} ${CMAKE_C_FLAGS_INIT}")
+set(CMAKE_C_FLAGS_INIT "$ENV{CPPFLAGS} $ENV{CFLAGS} ${CMAKE_C_FLAGS_INIT}")
 
 cmake_initialize_per_config_variable(CMAKE_C_FLAGS "Flags used by the C compiler")
 
