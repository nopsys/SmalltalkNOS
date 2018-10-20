printing
printOn: aStream
	aStream nextPutAll: 'ARP '.
	self isRequest
		ifTrue: [aStream nextPutAll: 'who-has '; print: self targetProtocolAddress; nextPutAll: ' tell '; print: self senderHardwareAddress.
				^ self].
	self isReply
		ifTrue: [aStream print: self senderProtocolAddress; nextPutAll: ' is-at '; print: self senderHardwareAddress.
				^ self].
	aStream nextPutAll: self opcodeName asString