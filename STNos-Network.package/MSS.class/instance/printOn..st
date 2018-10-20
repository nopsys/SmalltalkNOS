printing
printOn: aStream
	aStream nextPutAll: '{MSS='; print: self value; nextPut: $}