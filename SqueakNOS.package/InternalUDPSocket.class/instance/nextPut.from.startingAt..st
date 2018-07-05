accessing
nextPut: anInteger from: aByteArray startingAt: startIndex
	"Write the next anInteger elements in aByteArray, starting at startIndex. Answer the number of bytes actually written."

	| udp |
	udp := UDPPacket new: anInteger.
	udp length: udp size.
	udp replaceFrom: udp headerSize + 1 to: udp size with: aByteArray asByteArray startingAt: startIndex.
	udp source: self localPort; destination: self remotePort.
	self nextPut: udp.
	^ anInteger