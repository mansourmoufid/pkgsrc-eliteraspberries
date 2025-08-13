# $NetBSD$

DISTNAME=	v1.4.6
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

INSTALLATION_DIRS+=	${PREFIX}/include ${PREFIX}/lib/pkgconfig

CONFIGURE_ARGS+=	--mandir=${PREFIX}/${PKGMANDIR}
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}

CONFIGURE_ARGS+=	--disable-gettext
CONFIGURE_ARGS+=	--disable-openssl

MAKE_ENV+=	OPTFLAGS=""

CONF_FILES+=	${PREFIX}/etc/rhashrc ${PKG_SYSCONFDIR}/rhashrc

.include "../../mk/bsd.prefs.mk"

post-install:
	for h in rhash.h rhash_torrent.h; do \
		${INSTALL_DATA} ${WRKSRC}/librhash/$$h ${DESTDIR}${PREFIX}/include; \
	done
.if ${OPSYS} == "Darwin"
	cd ${DESTDIR}${PREFIX}/lib && ${LN} -s librhash.1.dylib librhash.dylib
.else
	cd ${DESTDIR}${PREFIX}/lib && ${LN} -s librhash.1.so librhash.so
.endif
	${INSTALL_DATA} ${WRKSRC}/dist/librhash.pc \
		${DESTDIR}${PREFIX}/lib/pkgconfig

.include "../../mk/bsd.pkg.mk"
