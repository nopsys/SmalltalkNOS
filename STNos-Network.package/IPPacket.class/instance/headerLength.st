accessing
headerLength
	^ ((self at: 1) bitAnd: 16rF) * 4