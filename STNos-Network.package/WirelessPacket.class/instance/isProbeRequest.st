testing-management
isProbeRequest
	^ self isManagement and: [self subtype = 2r0100]