flow
processReply: anARPPacket
	(requests detect: [ :one | one protocol = anARPPacket senderProtocolAddress] ifNone: [^ self]) reply: anARPPacket