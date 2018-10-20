printing
printOn: aStream
	aStream
		nextPutAll: 'NOS File: ' , self name, ' (', identifier hex, ')'