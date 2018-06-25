services
doReadSectors: sectorCount
	| result |
	result := self
		cmdReadSectors;
		readAllAvailable: sectorCount.
	self reenableIRQsAndCheckForErrors.
	^result
	
		