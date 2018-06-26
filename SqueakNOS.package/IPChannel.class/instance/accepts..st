flow
accepts: aPacket
	^ (aPacket isKindOf: IPPacket)
		and: [aPacket version = 4
			and: [(localAddress isNil or: [aPacket destination = localAddress])
				and: [remoteAddress isNil or: [aPacket source = remoteAddress]]]]