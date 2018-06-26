helpers
verifiesChecksum
	^ self checksum = 0 or: [super verifiesChecksum]