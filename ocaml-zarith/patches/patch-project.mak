$NetBSD$

--- project.mak.orig	2019-08-28 10:17:04.000000000 -0400
+++ project.mak	2020-02-26 08:56:47.000000000 -0500
@@ -56,11 +56,6 @@
 TOINSTALL += zarith.cmxs
 endif
 
-ifeq ($(HASBINANNOT),yes)
-TOINSTALL += $(CMIDOC)
-OCAMLFLAGS += -bin-annot
-endif
-
 # build targets
 ###############
 
@@ -110,10 +105,11 @@
 
 ifeq ($(INSTMETH),findlib)
 install:
-	$(OCAMLFIND) install -destdir "$(INSTALLDIR)" zarith META $(TOINSTALL) -optional dllzarith.$(DLLSUFFIX)
+	mkdir -p $(DESTDIR)$(INSTALLDIR)
+	$(OCAMLFIND) install -destdir "$(DESTDIR)$(INSTALLDIR)" zarith META $(TOINSTALL) -optional dllzarith.$(DLLSUFFIX)
 
 uninstall:
-	$(OCAMLFIND) remove -destdir "$(INSTALLDIR)" zarith
+	$(OCAMLFIND) remove -destdir "$(DESTDIR)$(INSTALLDIR)" zarith
 endif
 
 
