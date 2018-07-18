accessing
targetHardwareAddress
	^ (self hardwareClass ifNil: [^ nil])
		bytes: (self copyFrom: 9 + self hardwareSize + self protocolSize to: 9 - 1 + (self hardwareSize*2) + self protocolSize)