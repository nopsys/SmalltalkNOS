instances creation
with: aPacket headerSize: anInteger
	^ (super with: aPacket headerSize: anInteger)
		dataOffset: anInteger