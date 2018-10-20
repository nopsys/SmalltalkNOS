printing
printOn: aStream
	aStream nextPutAll: '{WSopt='; print: self factor; nextPut: $}