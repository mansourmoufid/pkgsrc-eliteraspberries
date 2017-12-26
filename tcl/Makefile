# $NetBSD$

.include "../../eliteraspberries/tcl/Makefile.version"

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

post-extract:
	${RM} -rf ${WRKSRC}/pkgs/tdbc*
	${RM} -rf ${WRKSRC}/pkgs/tdbcmysql*
	${RM} -rf ${WRKSRC}/pkgs/tdbcodbc*
	${RM} -rf ${WRKSRC}/pkgs/tdbcpostgres*
	${RM} -rf ${WRKSRC}/pkgs/sqlite3*
	${RM} -rf ${WRKSRC}/pkgs/tdbcsqlite3*
	${RM} -rf ${WRKSRC}/compat/zlib

CONFIGURE_ARGS+=	--without-zlib

.include "../../eliteraspberries/tcl/Makefile.common"

SUBST_CLASSES+=			tcl-config
SUBST_STAGE.tcl-config=		post-configure
SUBST_MESSAGE.tcl-config=	Fixing paths in tclConfig.sh.
SUBST_FILES.tcl-config=		unix/tclConfig.sh
SUBST_SED.tcl-config=		-e "s,${WRKSRC},../../..,g"

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
