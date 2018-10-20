printing
printOn: aStream
	aStream print: self destination; nextPutAll: ' -> '.
	self gateway isNil ifFalse: [aStream print: self gateway; nextPutAll: ' -> '].
	aStream print: self interface