accessing
firstCluster
	| hi lo |
	hi := contents unsignedShortAtOffset: 16r14.
	lo := contents unsignedShortAtOffset: 16r1A.
	^ lo + (hi bitShift: 16)