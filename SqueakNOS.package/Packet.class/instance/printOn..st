printing
printOn: aStream
	aStream print: self class; space.
	self do: [ :each |
		aStream
			nextPut: ('0123456789ABCDEF' at: each // 16 + 1);
			nextPut: ('0123456789ABCDEF' at: (each \\ 16 + 1))]