printing
printOn: aStream
	self bytes
		do: [ :each | aStream nextPutAll: each asString]
		separatedBy: [aStream nextPut: $.]