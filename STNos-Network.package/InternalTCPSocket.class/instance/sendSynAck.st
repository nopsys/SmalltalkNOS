protocol
sendSynAck
	| tcp |
	tcp := (TCPPacket new: 0)
			syn: true;
			ack: true;
			ackSequence: reassembler nextSequence.
	self nextPut: tcp