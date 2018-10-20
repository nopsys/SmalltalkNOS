accessing-control
type
	^ (self frameControl bitShift: -2) bitAnd: 2r11