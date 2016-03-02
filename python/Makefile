# $NetBSD$

.include "../../eliteraspberries/python/Makefile.version"

DISTNAME=	Python-${PYTHON_VERSION}
PKGNAME=	python-${PYTHON_VERSION}
CATEGORIES=	lang
MASTER_SITES=	https://www.python.org/ftp/python/${PYTHON_VERSION}/
EXTRACT_SUFX=	.tgz

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://www.python.org/
COMMENT=	Python programming language
LICENSE=	python-software-foundation

GNU_CONFIGURE=	yes
USE_TOOLS+=	autoconf gmake pkg-config
USE_LANGUAGES=	c

PKGCONFIG_OVERRIDE+=	Misc/python.pc.in

CFLAGS+=	-I${LOCALBASE}/include/ncurses

pre-configure:
	cd ${WRKSRC} && autoconf

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--with-system-ffi
CONFIGURE_ARGS+=	--without-ensurepip

.include "../../eliteraspberries/tcl/Makefile.version"

TCLTK_LIBS=		-ltcl${TCL_BASEVER} -ltk${TCL_BASEVER}
CONFIGURE_ARGS+=	--with-tcltk-includes="-I${LOCALBASE}/include"
CONFIGURE_ARGS+=	--with-tcltk-libs="-L${LOCALBASE}/lib ${TCLTK_LIBS}"

CONFIGURE_ARGS+=	OPT="${CFLAGS}"

PLIST_SUBST+=	PYTHON_MAJOR_VERSION=${PYTHON_MAJOR_VERSION}
PLIST_SUBST+=	PYTHON_BASEVER=${PYTHON_BASEVER}
PLIST_SUBST+=	PYTHON_VERSION=${PYTHON_VERSION}

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/libffi/buildlink3.mk"
.include "../../eliteraspberries/ncurses/buildlink3.mk"
.include "../../eliteraspberries/readline/buildlink3.mk"
.include "../../eliteraspberries/tcl/buildlink3.mk"
.include "../../eliteraspberries/tk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
