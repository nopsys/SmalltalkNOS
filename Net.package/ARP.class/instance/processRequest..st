flow
processRequest: anARPPacket
	| ethernet |
	anARPPacket targetProtocolAddress = self protocolAddress ifFalse: [^ self].
	anARPPacket
		opcodeName: #Reply;
		swapSenderAndTarget;
		senderHardwareAddress: self hardwareAddress.
	(ethernet := anARPPacket envelope)
		destination: anARPPacket targetHardwareAddress.
	self << ethernet