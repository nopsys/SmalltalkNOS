printing
printOn: aStream
	aStream nextPutAll: 'ICMP ', self typeName, ' ', self codeName, ' ', self sequence hex