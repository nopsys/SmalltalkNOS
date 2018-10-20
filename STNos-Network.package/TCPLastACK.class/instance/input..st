protocol
input: aPacket
	aPacket rst ifTrue: [^ self abort: ConnectionReset].
	aPacket syn ifTrue: [^ self reset: aPacket; abort: ConnectionReset].

	self handleAck: aPacket.

	self flag: #todo.

	socket finAcknowledged
		ifTrue: [self moveTo: TCPClosed new.
				socket detach]