protocol
input: aPacket
"	(aPacket ack and: [(aPacket ackSequence between: self iss and: self snext) not])
		ifTrue: [^ self reset: aPacket]."
	aPacket rst ifTrue: [self moveTo: TCPClosed new. "ConnectionReset, killtimers ... etc"].
	aPacket syn ifFalse: [^ self].
	"socket windowSize: "
	self handleAck: aPacket.
	self handleSyn: aPacket.
	self handleData: aPacket.
	aPacket ack
		ifTrue: [self sendAckImmediatly.
				self moveTo: TCPEstablished new]
		ifFalse: [self sendSynAck.
				self moveTo: TCPSynReceived new]