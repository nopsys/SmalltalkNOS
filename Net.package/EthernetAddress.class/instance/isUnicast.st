testing
isUnicast
	^ self isBroadcast not and: [self isMulticast not]