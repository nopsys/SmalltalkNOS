accessing
senderHardwareAddress: aNetAddress
	self hardwareType: aNetAddress class type.
	self hardwareSize: aNetAddress size.
	self replaceFrom: 9 to: 9 - 1 + aNetAddress size with: aNetAddress asByteArray