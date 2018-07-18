flow
undeliverable: aPacket
	| tcp ip |
	aPacket syn ifFalse: [^ self].
	tcp := (TCPPacket new: 0)
		source: aPacket destination;
		destination: aPacket source;
		rst: true;
		ack: true;
		sequence: 0;
		ackSequence: aPacket sequence + 1.
	ip := (IPPacket with: tcp)
		source: aPacket envelope destination;
		destination: aPacket envelope source.
	self << ip