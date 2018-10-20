accessing
ackSequence
	^ TCPSequenceNumber value: (self longAt: 9)