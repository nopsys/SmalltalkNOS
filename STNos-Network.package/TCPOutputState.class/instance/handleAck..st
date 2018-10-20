as yet unclassified
handleAck: aPacket
	| prev |
	aPacket ack ifFalse: [^ self].
	prev := socket lastAcknowledged.
	socket acknowledged: aPacket ackSequence.
	prev = socket lastAcknowledged ifFalse: [self ackArrived]