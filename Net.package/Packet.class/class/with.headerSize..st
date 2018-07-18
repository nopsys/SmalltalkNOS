instances creation
with: aPacketOrByteArray headerSize: anInteger
	| answer |
	(aPacketOrByteArray isKindOf: Packet)
		ifFalse: [^ self bytes: aPacketOrByteArray offset: anInteger negated].

	answer := self bytes: aPacketOrByteArray bytes offset: aPacketOrByteArray offset - anInteger.
	aPacketOrByteArray envelope: answer.
	^ answer