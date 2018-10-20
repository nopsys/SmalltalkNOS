protocol
input: aPacket
	aPacket rst ifTrue: [^ self abort: ConnectionReset].
	aPacket syn ifTrue: [^ self reset: aPacket; abort: ConnectionReset].

	self handleAck: aPacket.
	self handleData: aPacket.
	self updateSendingWindowSize: aPacket.
	self reassembler finished ifTrue: [self moveTo: TCPCloseWait new]