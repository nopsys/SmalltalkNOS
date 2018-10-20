printing
printOn: aStream
	aStream nextPutAll: 'who-has '; print: protocol; nextPutAll: ' ('; print: tries; nextPutAll: ' tries, '; print: pendingPackets size; nextPutAll: ' packets pending)'