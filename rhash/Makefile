# $NetBSD$

DISTNAME=	v1.3.9
PKGNAME=	rhash-${DISTNAME:S/v//}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=rhash/RHash/archive/}
DIST_SUBDIR=	rhash

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://rhash.sf.net/
COMMENT=	Great utility for computing hash sums
LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}/RHash-${PKGVERSION_NOREV}

USE_TOOLS+=	gmake

HAS_CONFIGURE=	yes

INSTALLATION_DIRS+=	${PREFIX}/share

CONFIGURE_ARGS+=	--mandir=${PREFIX}/${PKGMANDIR}
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}

CONFIGURE_ARGS+=	--disable-gettext
CONFIGURE_ARGS+=	--disable-openssl

MAKE_ENV+=	OPTFLAGS=""

CONF_FILES+=	${PREFIX}/share/rhashrc ${PKG_SYSCONFDIR}/rhashrc

.include "../../mk/bsd.pkg.mk"
