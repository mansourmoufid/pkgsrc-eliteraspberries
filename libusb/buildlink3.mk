# $NetBSD$

BUILDLINK_TREE+=	libusb

.if !defined(LIBUSB_BUILDLINK3_MK)
LIBUSB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libusb+=	libusb>=1.0.22
BUILDLINK_PKGSRCDIR.libusb?=	../../eliteraspberries/libusb
.endif	# LIBUSB_BUILDLINK3_MK

BUILDLINK_TREE+=	-libusb
