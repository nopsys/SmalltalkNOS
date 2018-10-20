accessing
bytesAt: byteIndex count: count
	^ stream
		position: byteIndex - 1;
		next: count