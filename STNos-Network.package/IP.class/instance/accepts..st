flow
accepts: aPacket
	^ (aPacket isKindOf: IPPacket) and: [aPacket version = 4 and: [address isNil or: [aPacket destination = address]]]