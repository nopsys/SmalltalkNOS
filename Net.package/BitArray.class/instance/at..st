accessing
at: anInteger
	^ (contents bitShift: 1-anInteger) bitAnd: 1