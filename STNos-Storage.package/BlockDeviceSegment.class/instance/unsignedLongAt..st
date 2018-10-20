converting
unsignedLongAt: byteIndex
	^ device unsignedLongAt: byteIndex + (offset * self blockSize)