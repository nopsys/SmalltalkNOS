accessing
targetProtocolAddress
	^ (self protocolClass ifNil: [^ nil])
		bytes: (self copyFrom: 9 + (self hardwareSize * 2) + self protocolSize to: 9 - 1 + (self hardwareSize + self protocolSize * 2))