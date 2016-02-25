# $NetBSD$

DISTNAME=	tk${TCL_VERSION}-src
PKGNAME=	tk-${TCL_VERSION}
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tcl/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://tcl.tk/
COMMENT=	Tk graphical user interface toolkit
LICENSE=	2-clause-bsd

WRKSRC=		${WRKDIR}/tk${TCL_VERSION}
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	unix/tk.pc.in

GNU_CONFIGURE=		yes
CONFIGURE_DIRS=		unix
BUILD_DIRS=		unix

.include "../../eliteraspberries/tcl/Makefile.common"

CONFIGURE_ARGS+=	--with-tcl=${PREFIX}/lib

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
CONFIGURE_ARGS+=	--enable-aqua
.endif

SUBST_CLASSES+=			tk-config
SUBST_STAGE.tk-config=		post-configure
SUBST_MESSAGE.tk-config=	Fixing paths in tkConfig.sh.
SUBST_FILES.tk-config=		unix/tkConfig.sh
SUBST_SED.tk-config=		-e "s,${WRKSRC},../../..,g"

.include "../../eliteraspberries/tcl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"