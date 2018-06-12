accessing
unsignedShortAt: byteIndex
	^(self bytesAt: byteIndex count: 2) unsignedShortAt: 1