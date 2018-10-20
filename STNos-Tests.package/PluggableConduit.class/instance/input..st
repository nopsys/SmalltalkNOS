flow
input: aPacket
	incomingAction ifNotNil: [incomingAction value: aPacket].
	super input: aPacket