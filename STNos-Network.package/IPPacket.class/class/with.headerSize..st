instance creation
with: aPacket headerSize: anInteger
	^ (super with: aPacket headerSize: anInteger)
		headerLength: anInteger;
		protocol: aPacket class protocol;
		version: 4;
		ttl: 255;
		length: aPacket size + anInteger