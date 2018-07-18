accessing
senderProtocolAddress: aNetAddress
	self protocolType: aNetAddress class type.
	self protocolSize: aNetAddress size.
	self replaceFrom: 9 + self hardwareSize to: 8 + self hardwareSize + aNetAddress size with: aNetAddress asByteArray