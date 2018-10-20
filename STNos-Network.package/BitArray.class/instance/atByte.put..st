accessing
atByte: anInteger put: byte
	contents := contents bitOr: (byte bitShift: anInteger-1*8).
	^ byte