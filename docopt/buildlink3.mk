# $NetBSD$

BUILDLINK_TREE+=	docopt

.if !defined(DOCOPT_BUILDLINK3_MK)
DOCOPT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.docopt+=	docopt>=0.6.2
BUILDLINK_PKGSRCDIR.docopt?=	../../eliteraspberries/docopt

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.endif	# DOCOPT_BUILDLINK3_MK

BUILDLINK_TREE+=	-docopt
