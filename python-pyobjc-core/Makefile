# $NetBSD$

.include "../../eliteraspberries/python-pyobjc/Makefile.version"

DISTNAME=	pyobjc-core-${PYOBJC_VERSION}
PKGNAME=	python-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyobjc-core/}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	https://bitbucket.org/ronaldoussoren/pyobjc
COMMENT=	PyObjC is a bridge between Python and Objective-C
LICENSE=	mit

USE_LANGUAGES=	c

SUBST_CLASSES+=				include
SUBST_STAGE.include=		pre-configure
SUBST_FILES.include+=		Modules/objc/libffi_extra.h
SUBST_FILES.include+=		Modules/objc/libffi_extra.m
SUBST_FILES.include+=		Modules/objc/libffi_support.h
SUBST_FILES.include+=		Modules/objc/selector.h
SUBST_SED.include+=			-e 's|ffi/ffi.h|ffi.h|'

.include "../../eliteraspberries/libffi/buildlink3.mk"
.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
