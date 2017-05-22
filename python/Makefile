# $NetBSD$

.include "../../eliteraspberries/python/Makefile.version"

DISTNAME=	Python-${PYTHON_VERSION}
PKGNAME=	python-${PYTHON_VERSION}
PKGREVISION=	4
CATEGORIES=	lang
MASTER_SITES=	https://www.python.org/ftp/python/${PYTHON_VERSION}/
EXTRACT_SUFX=	.tgz

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://www.python.org/
COMMENT=	Python programming language
LICENSE=	python-software-foundation

GNU_CONFIGURE=	yes
USE_TOOLS+=	autoconf gmake perl pkg-config
USE_LANGUAGES=	c

PKGCONFIG_OVERRIDE+=	Misc/python.pc.in

pre-configure:
	cd ${WRKSRC} && autoconf

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--with-system-ffi
CONFIGURE_ARGS+=	--without-ensurepip
CONFIGURE_ARGS+=	--without-pydebug
CONFIGURE_ARGS+=	--without-pymalloc

.include "../../eliteraspberries/tcl/Makefile.version"

TCLTK_LIBS=		-ltcl${TCL_BASEVER} -ltk${TCL_BASEVER}
CONFIGURE_ARGS+=	--with-tcltk-includes="-I${PREFIX}/include"
CONFIGURE_ARGS+=	--with-tcltk-libs="-L${PREFIX}/lib ${TCLTK_LIBS}"

CONFIGURE_ARGS+=	OPT="${CFLAGS}"

.include "../../eliteraspberries/python/Makefile.common"

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/libffi/buildlink3.mk"
.include "../../eliteraspberries/ncurses/buildlink3.mk"
.include "../../eliteraspberries/readline/buildlink3.mk"
.include "../../eliteraspberries/tcl/buildlink3.mk"
.include "../../eliteraspberries/tk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
