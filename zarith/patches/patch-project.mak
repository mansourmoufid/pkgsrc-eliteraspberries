$NetBSD$

--- project.mak.orig	2015-11-09 21:23:00.000000000 +0000
+++ project.mak
@@ -81,25 +81,25 @@ doc: $(MLISRC)
 
 ifeq ($(INSTMETH),install)
 install:
-	install -d $(INSTALLDIR) $(INSTALLDIR)/zarith $(INSTALLDIR)/stublibs
+	install -d $(DESTDIR)$(INSTALLDIR) $(DESTDIR)$(INSTALLDIR)/zarith $(DESTDIR)$(INSTALLDIR)/stublibs
 	for i in $(TOINSTALL); do \
-		if test -f $$i; then $(INSTALL) -m 0644 $$i $(INSTALLDIR)/zarith/$$i; fi; \
+		if test -f $$i; then $(INSTALL) -m 0644 $$i $(DESTDIR)$(INSTALLDIR)/zarith/$$i; fi; \
 	done
-	if test -f dllzarith.$(DLLSUFFIX); then $(INSTALL) -m 0755 dllzarith.$(DLLSUFFIX) $(INSTALLDIR)/stublibs/dllzarith.$(DLLSUFFIX); fi
+	if test -f dllzarith.$(DLLSUFFIX); then $(INSTALL) -m 0755 dllzarith.$(DLLSUFFIX) $(DESTDIR)$(INSTALLDIR)/stublibs/dllzarith.$(DLLSUFFIX); fi
 
 uninstall:
 	for i in $(TOINSTALL); do \
-		rm -f $(INSTALLDIR)/zarith/$$i; \
+		rm -f $(DESTDIR)$(INSTALLDIR)/zarith/$$i; \
 	done
-	if test -f $(INSTALLDIR)/stublibs/dllzarith.$(DLLSUFFIX); then rm -f $(INSTALLDIR)/stublibs/dllzarith.$(DLLSUFFIX); fi
+	if test -f $(DESTDIR)$(INSTALLDIR)/stublibs/dllzarith.$(DLLSUFFIX); then rm -f $(DESTDIR)$(INSTALLDIR)/stublibs/dllzarith.$(DLLSUFFIX); fi
 endif
 
 ifeq ($(INSTMETH),findlib)
 install:
-	$(OCAMLFIND) install -destdir "$(INSTALLDIR)" zarith META $(TOINSTALL) dllzarith.$(DLLSUFFIX)
+	$(OCAMLFIND) install -destdir "$(DESTDIR)$(INSTALLDIR)" zarith META $(TOINSTALL) dllzarith.$(DLLSUFFIX)
 
 uninstall:
-	$(OCAMLFIND) remove -destdir "$(INSTALLDIR)" zarith
+	$(OCAMLFIND) remove -destdir "$(DESTDIR)$(INSTALLDIR)" zarith
 endif
 
 
