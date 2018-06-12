converting
unsignedLongAt: byteIndex put: value
	^ device unsignedLongAt: byteIndex + (offset * self blockSize) put: value