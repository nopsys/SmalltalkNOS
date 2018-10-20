protocol
input: aPacket
	aPacket rst ifTrue: [^ socket detach].
	aPacket syn ifTrue: [^ socket reset: aPacket; detach].

	self handleAck: aPacket.
	aPacket fin ifTrue: [^ self].
	self moveTo: TCPTimeWait new.
	self wait2MSL