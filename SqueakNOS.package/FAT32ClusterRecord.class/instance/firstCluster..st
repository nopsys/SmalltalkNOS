accessing
firstCluster: aNumber
	| hi lo |
	lo := aNumber bitAnd: 16rFFFF.
	hi := (aNumber bitShift: -16) bitAnd: 16rFFFF.
	contents
		unsignedShortAtOffset: 16r14 put: hi;
		unsignedShortAtOffset: 16r1A put: lo