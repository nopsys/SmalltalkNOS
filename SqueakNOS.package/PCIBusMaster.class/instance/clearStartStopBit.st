initialization
clearStartStopBit
	self command: (self command bitAnd: 16rFE)
