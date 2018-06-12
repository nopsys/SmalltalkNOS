real access
unsignedLongAt: anInteger
	^ (self bytesAt: anInteger count: 4) unsignedLongAt: 1