flow
accepts: aPacket
	^ ((aPacket isKindOf: TCPPacket)
		and: [localPort isNil or: [aPacket destination = localPort]])
			and: [remotePort isNil or: [aPacket source = remotePort]]