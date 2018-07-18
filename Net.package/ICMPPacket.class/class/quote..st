instance creation
quote: anIPPacket
	^ self with: (anIPPacket copyFrom: 1 to: anIPPacket headerSize + 8)