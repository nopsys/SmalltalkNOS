accessing
nextPut: anInteger from: aByteArray startingAt: startIndex
	"Write the next anInteger elements in aByteArray, starting at startIndex. Answer the number of bytes actually written."

	| tcp |
	self flag: #todo. "this should be implemented in tcp states"
	tcp := TCPPacket new: anInteger.
	tcp replaceFrom: tcp headerSize + 1 to: tcp size with: aByteArray asByteArray startingAt: startIndex.
	tcp psh: true; source: self localPort; destination: self remotePort.
	tcp ack: true; ackSequence: reassembler nextSequence.
	timer removeAlarm: #sendAckImmediatly for: self.
	self nextPut: tcp.
	^ anInteger