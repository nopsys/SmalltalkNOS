primitive
primitiveClose: descriptor
	self primitive: 'PacketSocketClose' parameters: #(SmallInteger).
	self cCode: 'sqPacketSocketClose(descriptor)'