testing-management
isBeacon
	^ self isManagement and: [self subtype = 2r1000]