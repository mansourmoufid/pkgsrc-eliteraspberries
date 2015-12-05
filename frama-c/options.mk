PKG_OPTIONS_VAR=	PKG_OPTIONS.frama-c
PKG_SUPPORTED_OPTIONS=	wp
PKG_SUGGESTED_OPTIONS=	wp

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mwp)
CONFIGURE_ARGS+=	--enable-wp
.include "../../eliteraspberries/alt-ergo/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-wp
.endif
