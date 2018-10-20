converting
unsignedLongAtOffset: byteOffset put: value
	^ self unsignedLongAt: byteOffset + 1 put: value