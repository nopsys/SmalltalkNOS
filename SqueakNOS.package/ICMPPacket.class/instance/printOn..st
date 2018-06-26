printing
printOn: aStream
	aStream nextPutAll: 'ICMP ', self typeName, ' ', self codeName