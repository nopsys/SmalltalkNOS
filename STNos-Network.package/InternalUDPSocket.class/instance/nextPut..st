accessing
nextPut: anUDPPacket
	| ip |
	localPort notNil ifTrue: [anUDPPacket source: localPort].
	remotePort notNil ifTrue: [anUDPPacket destination: remotePort].
	ip := IPPacket with: anUDPPacket.
	ip destination: remoteAddress.
	self << ip