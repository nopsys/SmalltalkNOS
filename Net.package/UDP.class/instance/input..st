flow
input: anUDPPacket
	anUDPPacket verifiesChecksum ifFalse: [^ self].
	anUDPPacket envelope source isUnicast ifFalse: [^ self].
	super input: anUDPPacket