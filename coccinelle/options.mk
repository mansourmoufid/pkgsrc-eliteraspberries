# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.coccinelle
PKG_SUPPORTED_OPTIONS=	pcre python
PKG_SUGGESTED_OPTIONS=	pcre
PLIST_VARS+=		python

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mpcre)
USE_TOOLS+=		pkg-config
CONFIGURE_ARGS+=	--enable-pcre
CONFIGURE_ARGS+=	--enable-pcre-syntax
.include "../../eliteraspberries/pcre-ocaml/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-pcre
CONFIGURE_ARGS+=	--disable-pcre-syntax
.endif

.if !empty(PKG_OPTIONS:Mpython)
CONFIGURE_ARGS+=	--enable-python
PLIST.python=		yes
.include "../../eliteraspberries/python/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-python
.endif
