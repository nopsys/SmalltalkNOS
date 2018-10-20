testing-management
isProbeResponse
	^ self isManagement and: [self subtype = 2r0101]