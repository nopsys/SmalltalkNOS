testing-management
isAssociationRequest
	^ self isManagement and: [self subtype = 2r0000]