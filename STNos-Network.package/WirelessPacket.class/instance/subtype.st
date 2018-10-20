accessing-control
subtype
	^ (self frameControl bitShift: -4) bitAnd: 2r1111