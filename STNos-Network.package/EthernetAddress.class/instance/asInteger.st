converting
asInteger
	^ (bytes unsignedShortAt: 5) << 16 + (bytes unsignedShortAt: 3) << 16 + (bytes unsignedShortAt: 1)
