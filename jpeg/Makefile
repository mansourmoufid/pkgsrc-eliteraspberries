# $NetBSD$

DISTNAME=	jpegsrc.v9d
PKGNAME=	${DISTNAME:S/src.v/-/}
CATEGORIES=	devel graphics
MASTER_SITES=	http://www.ijg.org/files/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://www.ijg.org/
COMMENT=	IJG library for JPEG image compression
LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--with-pic

.include "../../mk/bsd.pkg.mk"
