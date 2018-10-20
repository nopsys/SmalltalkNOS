accessing
byteAt: index put: anInteger
	^ stream
		position: index - 1;
		nextPut: anInteger