printing
printOn: aStream
	aStream nextPutAll: 'TCP Socket '.
	localPort notNil ifTrue: [aStream nextPutAll: 'at '; print: localPort; space].
	remoteAddress notNil ifTrue: [aStream nextPutAll: 'to '; print: remoteAddress; nextPut: $:; print: remotePort; space].
	aStream space; nextPut: $(; nextPutAll: state name; space; nextPutAll: sender name; nextPut: $)