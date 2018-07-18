printing
printOn: aStream
	aStream nextPutAll: self class name.
	aStream nextPutAll: ' mtu='; print: self mtu