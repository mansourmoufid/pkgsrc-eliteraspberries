# $NetBSD$

META_PACKAGE=	yes

.include "Makefile.version"

PKGNAME=	python-pyobjc-${PYOBJC_VERSION}
CATEGORIES=	lang

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://github.com/ronaldoussoren/pyobjc
COMMENT=	PyObjC is a bridge between Python and Objective-C
LICENSE=	mit

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-pyobjc-core/buildlink3.mk"
.include "../../mk/bsd.prefs.mk"
.if ${OPSYS} == "Darwin"
.include "../../eliteraspberries/python-pyobjc-framework-Cocoa/buildlink3.mk"
.include "../../eliteraspberries/python-pyobjc-framework-Quartz/buildlink3.mk"
.endif
.include "../../mk/bsd.pkg.mk"
