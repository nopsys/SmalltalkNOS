helpers
swapSenderAndTarget
	| oldAddress |
	oldAddress := self senderHardwareAddress.
	self senderHardwareAddress: self targetHardwareAddress.
	self targetHardwareAddress: oldAddress.

	oldAddress := self senderProtocolAddress.
	self senderProtocolAddress: self targetProtocolAddress.
	self targetProtocolAddress: oldAddress