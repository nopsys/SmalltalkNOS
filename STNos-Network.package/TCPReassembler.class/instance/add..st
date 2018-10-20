accessing
add: aPacket
	aPacket lastSequence <= self lastSequence ifTrue: [Transcript cr; show: 'RETRANSMISSION: ', aPacket printString, ' (reassembler seq: ', sequence printString, ')'. ^ aPacket]. "ignore retransmissions"
	segments add: aPacket.
	self flag: #todo. "handle urgent data"
	self triggerEvent: #dataArrived.
	^ aPacket