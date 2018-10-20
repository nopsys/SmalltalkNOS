printing
printOn: aStream
	aStream nextPutAll: 'UDP '; print: self source; nextPutAll: ' -> '; print: self destination; space; print: self rawData asString