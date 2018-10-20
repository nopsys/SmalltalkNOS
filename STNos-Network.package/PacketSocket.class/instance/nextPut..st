accessing
nextPut: aPacket
	self primitiveWrite: descriptor from: aPacket bytes startingAt: aPacket offset + 1 count: aPacket size.
	^ aPacket