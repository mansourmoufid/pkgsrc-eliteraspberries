$NetBSD$

--- Modules/CMakeCXXInformation.cmake.orig	2020-02-06 15:58:10.000000000 -0500
+++ Modules/CMakeCXXInformation.cmake	2020-02-06 15:58:24.000000000 -0500
@@ -197,7 +197,7 @@
 # on the initial values computed in the platform/*.cmake files
 # use _INIT variables so that this only happens the first time
 # and you can set these flags in the cmake cache
-set(CMAKE_CXX_FLAGS_INIT "$ENV{CXXFLAGS} ${CMAKE_CXX_FLAGS_INIT}")
+set(CMAKE_CXX_FLAGS_INIT "$ENV{CPPFLAGS} $ENV{CXXFLAGS} ${CMAKE_CXX_FLAGS_INIT}")
 
 cmake_initialize_per_config_variable(CMAKE_CXX_FLAGS "Flags used by the CXX compiler")
 
