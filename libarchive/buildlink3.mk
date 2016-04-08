# $NetBSD$

BUILDLINK_TREE+=	libarchive

.if !defined(LIBARCHIVE_BUILDLINK3_MK)
LIBARCHIVE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libarchive+=	libarchive>=3.1.2
BUILDLINK_PKGSRCDIR.libarchive?=	../../eliteraspberries/libarchive

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../archivers/xz/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.endif	# LIBARCHIVE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libarchive
