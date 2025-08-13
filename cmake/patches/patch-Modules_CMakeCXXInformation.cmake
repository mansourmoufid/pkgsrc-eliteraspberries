--- Modules/CMakeCXXInformation.cmake.orig	2025-08-05 10:55:57
+++ Modules/CMakeCXXInformation.cmake	2025-08-13 12:58:47
@@ -95,7 +95,7 @@
 # on the initial values computed in the platform/*.cmake files
 # use _INIT variables so that this only happens the first time
 # and you can set these flags in the cmake cache
-set(CMAKE_CXX_FLAGS_INIT "$ENV{CXXFLAGS} ${CMAKE_CXX_FLAGS_INIT}")
+set(CMAKE_CXX_FLAGS_INIT "$ENV{CPPFLAGS} $ENV{CXXFLAGS} ${CMAKE_CXX_FLAGS_INIT}")
 
 cmake_initialize_per_config_variable(CMAKE_CXX_FLAGS "Flags used by the CXX compiler")
 
