PKG_OPTIONS_VAR=	PKG_OPTIONS.curl
PKG_SUPPORTED_OPTIONS=	mbedtls
PKG_SUGGESTED_OPTIONS=	mbedtls

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mmbedtls)
CONFIGURE_ARGS+=	--with-mbedtls
.include "../../eliteraspberries/mbedtls/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-mbedtls
.endif
