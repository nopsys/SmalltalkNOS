flow
input: anARPPacket
	anARPPacket isRequest
		ifTrue: [self cacheAt: anARPPacket senderProtocolAddress put: anARPPacket senderHardwareAddress.
				self processRequest: anARPPacket].
	anARPPacket isReply
		ifTrue: [self processReply: anARPPacket].
	^ super input: anARPPacket