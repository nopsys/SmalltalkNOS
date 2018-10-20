primitive
primitiveWrite: descriptor from: aByteArray startingAt: startIndex count: count
	self primitive: 'PacketSocketWrite' parameters: #(SmallInteger ByteArray SmallInteger SmallInteger).
	self cCode: 'sqPacketSocketWrite(descriptor, aByteArray, startIndex, count)'