printing
printOn: aStream
	aStream nextPutAll: 'RARP '.
	self isRequest
		ifTrue: [aStream nextPutAll: 'who-is '; print: self targetHardwareAddress; nextPutAll: ' tell '; print: self senderHardwareAddress.
				^ self].
	self isReply
		ifTrue: [aStream print: self targetProtocolAddress; nextPutAll: ' at '; print: self targetProtocolAddress.
				^ self].
	aStream nextPutAll: 'unknown opcode'