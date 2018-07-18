accessing
nextPut: aTCPPacket
	| ip |
	aTCPPacket
		source: self localPort;
		destination: self remotePort;
		windowSize: self windowSize;
		sequence: self sequence.
	ip := IPPacket with: aTCPPacket.
	ip destination: self remoteAddress; ttl: self ttl.
	self << ip.
	self sequence: aTCPPacket nextSequence