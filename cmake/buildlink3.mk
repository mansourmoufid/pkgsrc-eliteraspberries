# $NetBSD$

BUILDLINK_DEPMETHOD.cmake?=	build

BUILDLINK_TREE+=	cmake

.if !defined(CMAKE_BUILDLINK3_MK)
CMAKE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cmake+=	cmake>=3.5.1
BUILDLINK_PKGSRCDIR.cmake?=	../../eliteraspberries/cmake

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/curl/buildlink3.mk"
.include "../../eliteraspberries/libarchive/buildlink3.mk"
.include "../../eliteraspberries/ncurses/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.endif	# CMAKE_BUILDLINK3_MK

BUILDLINK_TREE+=	-cmake
