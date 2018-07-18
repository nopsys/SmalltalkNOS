flow
input: aTCPPacket
	aTCPPacket verifiesChecksum ifFalse: [^ self].
	aTCPPacket envelope source isUnicast ifFalse: [^ self].
	super input: aTCPPacket