testing-control
isACK
	^ self isControl and: [self subtype = 2r1101]