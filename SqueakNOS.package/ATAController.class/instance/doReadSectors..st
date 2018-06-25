services
doReadSectors: sectorCount
	^ self
		cmdReadSectors;
		readAllAvailable: sectorCount

