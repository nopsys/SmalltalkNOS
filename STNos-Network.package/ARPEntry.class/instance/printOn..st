printing
printOn: aStream
	aStream print: hardware; nextPutAll: ' -> '; print: protocol.
	self isStatic ifTrue: [aStream nextPutAll: ' (STATIC)']