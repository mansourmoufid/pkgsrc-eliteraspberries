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
CONFIGURE_ARGS+=	--with-tcltk-includes="-I${PREFIX}/include"
CONFIGURE_ARGS+=	--with-tcltk-libs="-L${PREFIX}/lib ${TCLTK_LIBS}"

MAKE_ENV+=		DYLD_FALLBACK_LIBRARY_PATH=${BUILDLINK_DIR}/lib

PLIST_SUBST+=	X=2
PLIST_SUBST+=	Y=7
PLIST_SUBST+=	Z=16

post-install: fix-suffixes

.PHONY: fix-suffixes
fix-suffixes:
.for f in 2to3 idle pydoc python
.for s in "" 2 2.7 -2 -2.7
	cd ${DESTDIR}${PREFIX}/bin && ( \
		${TEST} -h ${f}${s} && rm ${f}${s} || ${TRUE}; \
	)
.endfor
.endfor
.for f in 2to3
	cd ${DESTDIR}${PREFIX}/bin && ( \
		${TEST} -f ${f} && mv ${f} ${f}-2 || ${TRUE}; \
		${TEST} -f ${f}-2 && mv ${f}-2 ${f}-2.7 || ${TRUE}; \
	)
.endfor
.for f in idle pydoc python
	cd ${DESTDIR}${PREFIX}/bin && ( \
		${TEST} -f ${f} && mv ${f} ${f}2 || ${TRUE}; \
		${TEST} -f ${f}2 && mv ${f}2 ${f}2.7 || ${TRUE}; \
	)
.endfor
.for s in "" 2 2.7
	cd ${DESTDIR}${PREFIX}/bin && ( \
		${TEST} -h python${s}-config && rm python${s}-config || ${TRUE}; \
	)
.endfor
	cd ${DESTDIR}${PREFIX}/bin && (	\
		${TEST} -f python-config && mv python-config python2-config || ${TRUE}; \
		${TEST} -f python2-config && mv python2-config python2.7-config || ${TRUE}; \
	)

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
