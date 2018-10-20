accessing
targetProtocolAddress: aNetAddress
	self protocolType: aNetAddress class type.
	self protocolSize: aNetAddress size.
	self replaceFrom: 9 + (self hardwareSize * 2) + self protocolSize to: 8 + (self hardwareSize + self protocolSize * 2) with: aNetAddress asByteArray