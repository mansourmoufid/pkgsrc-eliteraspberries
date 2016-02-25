# $NetBSD$

DISTNAME=	tcl${TCL_VERSION}-src
PKGNAME=	tcl-${TCL_VERSION}
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tcl/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://tcl.tk/
COMMENT=	Tcl programming language
LICENSE=	2-clause-bsd

WRKSRC=		${WRKDIR}/tcl${TCL_VERSION}
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c

PKGCONFIG_OVERRIDE+=	unix/tcl.pc.in

GNU_CONFIGURE=		yes
CONFIGURE_DIRS=		unix
BUILD_DIRS=		unix

pre-configure:
	${RM} -rf ${WRKSRC}/pkgs/tdbc1.0.3
	${RM} -rf ${WRKSRC}/pkgs/tdbcmysql1.0.3
	${RM} -rf ${WRKSRC}/pkgs/tdbcodbc1.0.3
	${RM} -rf ${WRKSRC}/pkgs/tdbcpostgres1.0.3
	${RM} -rf ${WRKSRC}/pkgs/sqlite3.8.8.3
	${RM} -rf ${WRKSRC}/pkgs/tdbcsqlite3-1.0.3

.include "../../eliteraspberries/tcl/Makefile.common"

SUBST_CLASSES+=			tcl-config
SUBST_STAGE.tcl-config=		post-configure
SUBST_MESSAGE.tcl-config=	Fixing paths in tclConfig.sh.
SUBST_FILES.tcl-config=		unix/tclConfig.sh
SUBST_SED.tcl-config=		-e "s,${WRKSRC},../../..,g"

.include "../../mk/bsd.pkg.mk"
