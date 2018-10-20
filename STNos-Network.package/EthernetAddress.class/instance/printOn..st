printing
printOn: aStream
	self bytes
		do: [ :each |
			aStream
				nextPut: ('0123456789ABCDEF' at: each // 16 + 1);
				nextPut: ('0123456789ABCDEF' at: each \\ 16 + 1)]
		separatedBy: [aStream nextPut: $:]