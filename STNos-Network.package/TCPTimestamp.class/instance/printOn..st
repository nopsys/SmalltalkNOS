printing
printOn: aStream
	aStream nextPutAll: '{TSval='; print: self value.
	self echo = 0 ifFalse: [aStream nextPutAll: ',TSecr='; print: self echo].
	aStream nextPut: $}