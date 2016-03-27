PKG_OPTIONS_VAR=	PKG_OPTIONS.coccinelle
PKG_SUPPORTED_OPTIONS=	pcre
PKG_SUGGESTED_OPTIONS=	pcre

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
