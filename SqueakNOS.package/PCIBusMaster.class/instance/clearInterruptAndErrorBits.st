initialization
clearInterruptAndErrorBits
	| status |
	status := self unsignedByteAt: channelOffset + 2.
	self unsignedByteAt: channelOffset + 2 put: (status bitAnd: 2r11111001).