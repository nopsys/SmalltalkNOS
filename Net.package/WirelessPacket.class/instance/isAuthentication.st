testing-management
isAuthentication
	^ self isManagement and: [self subtype = 2r1011]