# $NetBSD$

DISTNAME=	jpegsrc.v9b
PKGNAME=	${DISTNAME:S/src.v/-/}
PKGREVISION=	2
CATEGORIES=	devel graphics
MASTER_SITES=	http://www.ijg.org/files/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://www.ijg.org/
COMMENT=	IJG library for JPEG image compression
LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

CONFIGURE_ARGS+=	--disable-shared
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--with-pic

.include "../../mk/bsd.pkg.mk"
