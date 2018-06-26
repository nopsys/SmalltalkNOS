protocol
input: aPacket
	aPacket rst ifTrue: [^ socket detach].
	aPacket syn ifTrue: [^ socket reset: aPacket; detach].
	self handleAck: aPacket.
	self handleData: aPacket.
	self wait2MSL