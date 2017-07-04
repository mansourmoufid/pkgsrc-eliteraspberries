$NetBSD$

--- mini-gmp/mini-gmp.c.orig	2017-07-04 11:28:58.000000000 -0400
+++ mini-gmp/mini-gmp.c	2017-07-04 11:29:08.000000000 -0400
@@ -236,7 +236,7 @@
     (y) = __mpz_srcptr_swap__tmp;					\
   } while (0)
 
-const int mp_bits_per_limb = GMP_LIMB_BITS;
+const int mp_bits_per_limb = (int) GMP_LIMB_BITS;
 
 
 /* Memory allocation and other helper functions. */
