flow
accepts: aPacket
	^ (localPort isNil or: [aPacket destination = localPort])
		and: [(remotePort isNil or: [aPacket source = remotePort])
			and: [remoteAddress isNil or: [aPacket envelope source = remoteAddress]]]