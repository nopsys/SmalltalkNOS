converting
unsignedShortAt: byteIndex put: value
	^ device unsignedShortAt: byteIndex + (offset * self blockSize) put: value