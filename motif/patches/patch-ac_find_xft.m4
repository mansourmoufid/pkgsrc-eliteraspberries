$NetBSD$

--- ac_find_xft.m4.orig	2017-05-14 21:25:04.000000000 -0400
+++ ac_find_xft.m4	2017-05-14 21:26:00.000000000 -0400
@@ -75,7 +75,8 @@
 LIBS="$LIBS $freetype_lib"
 saved_CPPFLAGS="$CPPFLAGS"
 CPPFLAGS="$CPPFLAGS $FREETYPE_CFLAGS"
-AC_CHECK_HEADERS(freetype/freetype.h)
+AC_CHECK_HEADERS(ft2build.h)
+ac_cv_header_freetype_freetype_h=$ac_cv_header_ft2build_h
 
 FINDXFT_HAVE_FREETYPE="no"
 case "$ac_cv_header_freetype_freetype_h" in
