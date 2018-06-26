printing
printOn: aStream
	aStream nextPutAll: '802.11 '; nextPutAll: self typeName; nextPut: $/; nextPutAll: self subtypeName.
	aStream space; print: self source.
	self size > 10 ifTrue: [aStream nextPutAll: ' -> '; print: self destination]