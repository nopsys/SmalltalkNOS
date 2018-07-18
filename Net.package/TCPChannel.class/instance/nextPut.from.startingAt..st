accessing
nextPut: anInteger from: aByteArray startingAt: startIndex
	"Write the next anInteger elements in aByteArray, starting at startIndex. Answer the number of bytes actually written."

	| tcp |
	(tcp := TCPPacket new: anInteger)
		source: localPort;
		destination: remotePort.
	tcp replaceFrom: tcp headerSize + 1 to: tcp size with: aByteArray asByteArray startingAt: startIndex.
	self << tcp.
	^ anInteger