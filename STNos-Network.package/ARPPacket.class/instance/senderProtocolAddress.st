accessing
senderProtocolAddress
	^ (self protocolClass ifNil: [^ nil])
		bytes: (self copyFrom: 9 + self hardwareSize to: 8 + self hardwareSize + self protocolSize)