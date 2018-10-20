converting
unsignedLongAt: byteIndex
	(1 <= byteIndex and: [ byteIndex + 3 <= size ])
		ifFalse: [ self errorInBounds: byteIndex ].
	^ contents unsignedLongAt: byteIndex + offset