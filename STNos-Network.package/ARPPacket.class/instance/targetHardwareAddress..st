accessing
targetHardwareAddress: aNetAddress
	self hardwareType: aNetAddress class type.
	self hardwareSize: aNetAddress size.
	self replaceFrom: 9 + self hardwareSize + self protocolSize to: 9 - 1 + (self hardwareSize*2) + self protocolSize with: aNetAddress asByteArray