protocol
input: aPacket
	aPacket rst ifTrue: [^ self abort: ConnectionReset]. "or just detach if it was a passive open"
	aPacket syn ifTrue: [^ self reset: aPacket; abort: ConnectionReset].

	self handleAck: aPacket.
	self moveTo: TCPEstablished new.
	self handleData: aPacket.
	self reassembler finished ifTrue: [self moveTo: TCPCloseWait new]