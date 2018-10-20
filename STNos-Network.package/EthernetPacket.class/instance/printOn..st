printing
printOn: aStream
	aStream nextPutAll: 'Ether '; print: self source; nextPutAll: ' -> '; print: self destination