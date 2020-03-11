$NetBSD$

--- Modules/CMakeCInformation.cmake.orig	2020-02-06 15:59:25.000000000 -0500
+++ Modules/CMakeCInformation.cmake	2020-02-06 15:59:43.000000000 -0500
@@ -100,7 +100,7 @@
   set(CMAKE_SHARED_MODULE_CREATE_C_FLAGS ${CMAKE_SHARED_LIBRARY_CREATE_C_FLAGS})
 endif()
 
-set(CMAKE_C_FLAGS_INIT "$ENV{CFLAGS} ${CMAKE_C_FLAGS_INIT}")
+set(CMAKE_C_FLAGS_INIT "$ENV{CPPFLAGS} $ENV{CFLAGS} ${CMAKE_C_FLAGS_INIT}")
 
 cmake_initialize_per_config_variable(CMAKE_C_FLAGS "Flags used by the C compiler")
 
