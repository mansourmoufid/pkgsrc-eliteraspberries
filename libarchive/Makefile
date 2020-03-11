# $NetBSD$

DISTNAME=	libarchive-3.4.0
PKGREVISION=	3
CATEGORIES=	archivers
MASTER_SITES=	http://libarchive.org/downloads/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://libarchive.org/
COMMENT=	Multi-format archive and compression library
LICENSE=	original-bsd AND 2-clause-bsd

GNU_CONFIGURE=	yes
USE_TOOLS+=	autoconf automake autoreconf perl pkg-config

PKGCONFIG_OVERRIDE+=	build/pkgconfig/libarchive.pc.in

pre-configure:
	cd ${WRKSRC} && autoreconf -f -i

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--disable-static
CONFIGURE_ARGS+=	--with-pic

CONFIGURE_ARGS+=	--enable-bsdcpio
CONFIGURE_ARGS+=	--enable-bsdcpio=shared
CONFIGURE_ARGS+=	--enable-bsdtar
CONFIGURE_ARGS+=	--enable-bsdtar=shared
CONFIGURE_ARGS+=	--enable-posix-regex-lib=libc

CONFIGURE_ARGS+=	--disable-acl
CONFIGURE_ARGS+=	--disable-xattr

CONFIGURE_ARGS+=	--with-bz2lib
CONFIGURE_ARGS+=	--with-lzma
CONFIGURE_ARGS+=	--with-zlib

CONFIGURE_ARGS+=	--without-expat
CONFIGURE_ARGS+=	--without-lzo2
CONFIGURE_ARGS+=	--without-nettle
CONFIGURE_ARGS+=	--without-openssl
CONFIGURE_ARGS+=	--without-xml2

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
