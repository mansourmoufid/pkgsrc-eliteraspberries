# $NetBSD$

PKGNAME=	ca-certificates-20161003
CATEGORIES=	security
MASTER_SITES=	#

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://support.apple.com/en-ca/HT203120
COMMENT=	Trusted root certificates from OS X Keychain
LICENSE=	public-domain

WRKSRC=		${WRKDIR}

NO_CONFIGURE=	yes
NO_BUILD=	yes

do-extract:
	${CP} ${FILESDIR}/ca-certificates.pem ${WRKSRC}

do-install:
	mkdir -p ${DESTDIR}${PREFIX}/etc/
	cd ${WRKSRC} && \
	${INSTALL_DATA} ca-certificates.pem ${DESTDIR}${PREFIX}/etc/

.include "../../mk/bsd.pkg.mk"
