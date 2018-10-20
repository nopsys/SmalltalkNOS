accessing
dataOffset: anInteger
	self resetFlags: 16rF000.
	self setFlags: (anInteger // 4 bitShift: 12)