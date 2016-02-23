# $NetBSD$

DISTNAME=	readline-6.3
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.cwru.edu/pub/bash/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html
COMMENT=	GNU Readline library
LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=	yes

CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--disable-static
CONFIGURE_ARGS+=	--with-curses

.include "../../eliteraspberries/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
