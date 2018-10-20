accessing
reply: anARPPacket
	arp cacheAt: anARPPacket senderProtocolAddress put: anARPPacket senderHardwareAddress.
	pendingPackets do: [ :each | arp << each].
	self delete