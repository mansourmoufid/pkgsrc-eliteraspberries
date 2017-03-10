# $NetBSD$

BUILDLINK_TREE+=	portaudio

.if !defined(PORTAUDIO_BUILDLINK3_MK)
PORTAUDIO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.portaudio+=	portaudio>=190600_20161030
BUILDLINK_PKGSRCDIR.portaudio?=	../../eliteraspberries/portaudio
.endif	# PORTAUDIO_BUILDLINK3_MK

BUILDLINK_TREE+=	-portaudio
