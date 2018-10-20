testing-management
isReasociationRequest
	^ self isManagement and: [self subtype = 2r0010]