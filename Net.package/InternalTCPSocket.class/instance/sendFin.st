protocol
sendFin
	| tcp |
	tcp := (TCPPacket new: 0)
			fin: true.
	self nextPut: tcp.
	finSequence := tcp sequence