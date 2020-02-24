$NetBSD$

--- build/install.sh.orig	2020-02-24 10:31:51.000000000 -0500
+++ build/install.sh	2020-02-24 10:34:06.000000000 -0500
@@ -125,12 +125,16 @@
 installbin camlp4/camlp4orf.byte$EXE $BINDIR/camlp4orf$EXE
 installbin camlp4/camlp4r.byte$EXE $BINDIR/camlp4r$EXE
 installbin camlp4/camlp4rf.byte$EXE $BINDIR/camlp4rf$EXE
-installbin camlp4/camlp4o.native$EXE $BINDIR/camlp4o.opt$EXE
-installbin camlp4/camlp4of.native$EXE $BINDIR/camlp4of.opt$EXE
-installbin camlp4/camlp4oof.native$EXE $BINDIR/camlp4oof.opt$EXE
-installbin camlp4/camlp4orf.native$EXE $BINDIR/camlp4orf.opt$EXE
-installbin camlp4/camlp4r.native$EXE $BINDIR/camlp4r.opt$EXE
-installbin camlp4/camlp4rf.native$EXE $BINDIR/camlp4rf.opt$EXE
+installbin camlp4/camlp4prof.native$EXE $BINDIR/camlp4prof$EXE
+installbin camlp4/mkcamlp4.native$EXE $BINDIR/mkcamlp4$EXE
+installbin camlp4/camlp4.native$EXE $BINDIR/camlp4$EXE
+installbin camlp4/camlp4boot.native$EXE $BINDIR/camlp4boot$EXE
+installbin camlp4/camlp4o.native$EXE $BINDIR/camlp4o$EXE
+installbin camlp4/camlp4of.native$EXE $BINDIR/camlp4of$EXE
+installbin camlp4/camlp4oof.native$EXE $BINDIR/camlp4oof$EXE
+installbin camlp4/camlp4orf.native$EXE $BINDIR/camlp4orf$EXE
+installbin camlp4/camlp4r.native$EXE $BINDIR/camlp4r$EXE
+installbin camlp4/camlp4rf.native$EXE $BINDIR/camlp4rf$EXE
 
 cd ./camlp4
 CAMLP4DIR=$LIBDIR/camlp4
