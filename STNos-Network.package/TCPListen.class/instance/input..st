protocol
input: aPacket
	self flag: #todo.
	aPacket rst ifTrue: [^ self].
	(aPacket ack or: [aPacket syn]) ifFalse: [socket reset: aPacket. ^ self].
	aPacket syn ifFalse: [^ self].
	socket remotePort isNil ifTrue: [socket remotePort: aPacket source].
	socket remoteAddress isNil ifTrue: [socket remoteAddress: aPacket envelope source].
	self handleSyn: aPacket.
	self sendSynAck.
	self moveTo: TCPSynReceived new