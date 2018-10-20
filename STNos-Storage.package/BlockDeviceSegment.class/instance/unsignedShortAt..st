converting
unsignedShortAt: byteIndex
	^ device unsignedShortAt: byteIndex + (offset * self blockSize)