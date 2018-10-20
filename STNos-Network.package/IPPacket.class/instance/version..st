accessing
version: anInteger
	self at: 1 put: ((anInteger bitShift: 4) bitOr: ((self at: 1) bitAnd: 16r0F))