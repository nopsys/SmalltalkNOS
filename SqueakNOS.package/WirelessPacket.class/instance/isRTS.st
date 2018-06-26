testing-control
isRTS
	^ self isControl and: [self subtype = 2r1011]