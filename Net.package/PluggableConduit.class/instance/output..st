flow
output: aPacket
	outgoingAction ifNotNil: [outgoingAction value: aPacket].
	super output: aPacket