instances creation
on: aPacket
	^ self new
		bytes: aPacket bytes;
		offset: aPacket headerSize + aPacket offset;
		envelope: aPacket