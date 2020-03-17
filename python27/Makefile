# $NetBSD$

DISTNAME=	Python-2.7.16
PKGNAME=	python27-16
CATEGORIES=	lang
MASTER_SITES=	https://www.python.org/ftp/python/2.7.16/
EXTRACT_SUFX=	.tgz

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://www.python.org/
COMMENT=	Python programming language
LICENSE=	python-software-foundation

GNU_CONFIGURE=	yes
USE_TOOLS+=	autoconf automake autoreconf gmake perl pkg-config
USE_LANGUAGES=	c

PKGCONFIG_OVERRIDE+=	Misc/python.pc.in

pre-configure:
	cd ${WRKSRC} && autoreconf -i

CONFIGURE_ARGS+=	--disable-universalsdk
CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--mandir=${PKGMANDIR}
CONFIGURE_ARGS+=	--with-system-ffi
CONFIGURE_ARGS+=	--without-ensurepip
CONFIGURE_ARGS+=	--without-pydebug
CONFIGURE_ARGS+=	--without-pymalloc

CONFIGURE_ARGS+=	OPT=""

.include "../../eliteraspberries/tcl/Makefile.version"
TCLTK_LIBS=		-ltcl${TCL_BASEVER} -ltk${TCL_BASEVER}
CONFIGURE_ARGS+=	--with-tcltk-includes="-I${BUILDLINK_DIR}/include"
CONFIGURE_ARGS+=	--with-tcltk-libs="-L${BUILDLINK_DIR}/lib ${TCLTK_LIBS}"

MAKE_ENV+=		DYLD_FALLBACK_LIBRARY_PATH=${BUILDLINK_DIR}/lib

PLIST_SUBST+=	X=2
PLIST_SUBST+=	Y=7
PLIST_SUBST+=	Z=16

post-install: fix-suffixes

.PHONY: fix-suffixes
fix-suffixes: fix-suffixes.sh
	sh fix-suffixes.sh

PLIST.${OPSYS}:
	${ECHO} '@comment $$NetBSD$$' > PLIST.${OPSYS}
	find "${DESTDIR}${PRERIX}" -type f -o -type l \
	| sed -e "s,^${DESTDIR}${PREFIX}[/]*,," \
		-e 's,2[.]7[.]16,$${X}.$${Y}.$${Z},g' \
		-e 's,2[.]7,$${X}.$${Y},g' \
		-e 's,python2,python$${X},g' \
		-e 's,pydoc2,pydoc$${X},g' \
		-e 's,idle2,idle$${X},g' \
		-e 's,-27,-$${X}$${Y},g' \
		-e '/.pyc$$/d' \
		-e '/.pyo$$/d' \
		-e '/.whl$$/d' \
		-e '/venv/d' \
	| sort \
	>> PLIST.${OPSYS}

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/libffi/buildlink3.mk"
.include "../../eliteraspberries/ncurses/buildlink3.mk"
.include "../../eliteraspberries/readline/buildlink3.mk"
.include "../../eliteraspberries/tcl/buildlink3.mk"
.include "../../eliteraspberries/tk/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
