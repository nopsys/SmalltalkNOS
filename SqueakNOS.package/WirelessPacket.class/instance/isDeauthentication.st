testing-management
isDeauthentication
	^ self isManagement and: [self subtype = 2r1100]