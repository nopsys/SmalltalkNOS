initialization
startTransfer
	self
		command: (self command bitOr: 2r00000001)