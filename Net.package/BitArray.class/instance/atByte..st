accessing
atByte: anInteger
	^ (contents bitShift: 1-anInteger*8) bitAnd: 16rFF