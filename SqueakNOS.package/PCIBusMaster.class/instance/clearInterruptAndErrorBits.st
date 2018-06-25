initialization
clearInterruptAndErrorBits
	self status: (self status bitAnd: 2r11111001)