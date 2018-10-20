accessing flags
flags: anInteger 
	self
		at: 7
		put: (((self at: 7)
				bitAnd: 2r00011111)
				bitOr: (anInteger bitShift: 5))
