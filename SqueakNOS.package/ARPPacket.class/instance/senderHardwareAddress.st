accessing
senderHardwareAddress
	^ (self hardwareClass ifNil: [^ nil])
		bytes: (self copyFrom: 9 to: 9 - 1 + self hardwareSize)