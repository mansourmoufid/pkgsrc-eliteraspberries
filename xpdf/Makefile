# $NetBSD$

DISTNAME=	xpdf-3.04
PKGREVISION=	2
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.foolabs.com/pub/xpdf/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://www.foolabs.com/xpdf/home.html
COMMENT=	Viewer for Portable Document Format (PDF) files
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	autoconf gmake perl

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
X_LIBS=	libX11.dylib \
	libXext.dylib \
	libXft.dylib \
	libXp.dylib \
	libXpm.dylib \
	libXt.dylib
CONFIGURE_ARGS+=	--x-includes=/opt/X11/include
CONFIGURE_ARGS+=	--x-libraries=/opt/X11/lib
.endif

pre-configure:
	cd ${WRKSRC} && autoconf
	ln -s /opt/X11/include/X11 ${BUILDLINK_DIR}/include/X11
	for x in ${X_LIBS}; do \
		ln -s /opt/X11/lib/$$x ${BUILDLINK_DIR}/lib/$$x; \
	done

.include "../../eliteraspberries/freetype2/buildlink3.mk"
.include "../../eliteraspberries/libpng/buildlink3.mk"
.include "../../eliteraspberries/motif/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
