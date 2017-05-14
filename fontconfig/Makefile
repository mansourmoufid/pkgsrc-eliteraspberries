# $NetBSD$

DISTNAME=	fontconfig-2.12.1
CATEGORIES=	fonts
MASTER_SITES=	https://www.freedesktop.org/software/fontconfig/release/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://www.freedesktop.org/wiki/Software/fontconfig/
COMMENT=	Library for configuring and customizing font access
LICENSE=	modified-bsd

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	fontconfig.pc.in

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--disable-iconv
CONFIGURE_ARGS+=	--disable-libxml2
CONFIGURE_ARGS+=	--disable-docs

CONFS =	10-autohint.conf \
	10-hinting-full.conf \
	10-hinting-medium.conf \
	10-hinting-none.conf \
	10-hinting-slight.conf \
	10-no-sub-pixel.conf \
	10-scale-bitmap-fonts.conf \
	10-sub-pixel-bgr.conf \
	10-sub-pixel-rgb.conf \
	10-sub-pixel-vbgr.conf \
	10-sub-pixel-vrgb.conf \
	10-unhinted.conf \
	11-lcdfilter-default.conf \
	11-lcdfilter-legacy.conf \
	11-lcdfilter-light.conf \
	20-unhint-small-vera.conf \
	25-unhint-nonlatin.conf \
	30-metric-aliases.conf \
	30-urw-aliases.conf \
	40-nonlatin.conf \
	45-latin.conf \
	49-sansserif.conf \
	50-user.conf \
	51-local.conf \
	60-latin.conf \
	65-fonts-persian.conf \
	65-khmer.conf \
	65-nonlatin.conf \
	69-unifont.conf \
	70-no-bitmaps.conf \
	70-yes-bitmaps.conf \
	80-delicious.conf \
	90-synthetic.conf

CONF_AVAIL=	${PREFIX}/share/fontconfig/conf.avail
CONF_D=		${PKG_SYSCONFDIR}/fonts/conf.d

MAKE_DIRS+=	${CONF_D}

.for f in ${CONFS}
CONF_FILES+=	${CONF_AVAIL}/${f} ${CONF_D}/${f}
.endfor

.include "../../eliteraspberries/freetype2/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
