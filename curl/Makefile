# $NetBSD$

DISTNAME=	curl-7.48.0
CATEGORIES=	www
MASTER_SITES=	https://curl.haxx.se/download/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://curl.haxx.se/
COMMENT=	Command line tool and library for transferring data
LICENSE=	original-bsd

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c

PKGCONFIG_OVERRIDE+=	libcurl.pc.in

CONFIGURE_ARGS+=	--enable-optimize
CONFIGURE_ARGS+=	--enable-http
CONFIGURE_ARGS+=	--enable-ftp
CONFIGURE_ARGS+=	--enable-proxy
CONFIGURE_ARGS+=	--enable-unix-sockets

CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--disable-curldebug
CONFIGURE_ARGS+=	--disable-ares
CONFIGURE_ARGS+=	--disable-file
CONFIGURE_ARGS+=	--disable-ldap
CONFIGURE_ARGS+=	--disable-ldaps
CONFIGURE_ARGS+=	--disable-rtsp
CONFIGURE_ARGS+=	--disable-dict
CONFIGURE_ARGS+=	--disable-telnet
CONFIGURE_ARGS+=	--disable-tftp
CONFIGURE_ARGS+=	--disable-pop3
CONFIGURE_ARGS+=	--disable-imap
CONFIGURE_ARGS+=	--disable-smb
CONFIGURE_ARGS+=	--disable-smtp
CONFIGURE_ARGS+=	--disable-gopher
CONFIGURE_ARGS+=	--disable-sspi
CONFIGURE_ARGS+=	--disable-crypto-auth
CONFIGURE_ARGS+=	--disable-ntlm-wb
CONFIGURE_ARGS+=	--disable-tls-srp
CONFIGURE_ARGS+=	--disable-cookies

CONFIGURE_ARGS+=	--without-zlib
CONFIGURE_ARGS+=	--without-winssl
CONFIGURE_ARGS+=	--without-darwinssl
CONFIGURE_ARGS+=	--without-ssl
CONFIGURE_ARGS+=	--without-gnutls
CONFIGURE_ARGS+=	--without-polarssl
CONFIGURE_ARGS+=	--without-mbedtls
CONFIGURE_ARGS+=	--without-cyassl
CONFIGURE_ARGS+=	--without-nss
CONFIGURE_ARGS+=	--without-axtls
CONFIGURE_ARGS+=	--without-ca-bundle
CONFIGURE_ARGS+=	--without-ca-path
CONFIGURE_ARGS+=	--without-ca-fallback
CONFIGURE_ARGS+=	--without-libpsl
CONFIGURE_ARGS+=	--without-libmetalink
CONFIGURE_ARGS+=	--without-libssh2
CONFIGURE_ARGS+=	--without-librtmp
CONFIGURE_ARGS+=	--without-winidn
CONFIGURE_ARGS+=	--without-libidn
CONFIGURE_ARGS+=	--without-nghttp2
CONFIGURE_ARGS+=	--without-zsh-functions-dir

.include "../../mk/bsd.pkg.mk"
