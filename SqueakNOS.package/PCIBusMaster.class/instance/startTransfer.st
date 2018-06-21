initialization
startTransfer
	| status |
	status := self byteAt: channelOffset + 0.
	self byteAt: channelOffset + 0 put: (status bitOr: 2r00000001).