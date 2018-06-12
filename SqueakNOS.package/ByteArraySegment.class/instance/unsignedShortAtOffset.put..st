converting
unsignedShortAtOffset: byteOffset put: value
	^ self unsignedShortAt: byteOffset + 1 put: value