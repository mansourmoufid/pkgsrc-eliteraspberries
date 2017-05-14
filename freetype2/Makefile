# $NetBSD$

DISTNAME=	freetype-2.8
PKGNAME=	${DISTNAME:S/freetype/freetype2/}
CATEGORIES=	graphics
MASTER_SITES=	http://download.sourceforge.net/freetype/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://www.freetype.org/
COMMENT=	Software library to render fonts
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	autoconf gmake perl

post-extract:
	rm -f ${WRKSRC}/src/gzip/[!f][!t]*.[ch]
	rm -f ${WRKSRC}/src/bzip2/[!f][!t]*.[ch]

pre-configure:
	cd ${WRKSRC}/builds/unix && autoconf

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--disable-static
CONFIGURE_ARGS+=	--with-zlib=yes
CONFIGURE_ARGS+=	--with-bzip2=yes
CONFIGURE_ARGS+=	--with-png=auto

CONFIGURE_ARGS+=	"LIBPNG_CFLAGS="
CONFIGURE_ARGS+=	"LIBPNG_LIBS=-lpng"

.include "../../devel/zlib/buildlink3.mk"
.include "../../archivers/bzip2/buildlink3.mk"
.include "../../eliteraspberries/libpng/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
