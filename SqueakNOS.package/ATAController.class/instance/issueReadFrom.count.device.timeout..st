services
issueReadFrom: firstSector count: sectorCount device: deviceNumber timeout: timeout
	^ self
		waitUntilNotBusyOr: timeout;
		selectSector: firstSector ofDrive: deviceNumber;
		regSectorCount: sectorCount;
		waitUntilReadyOr: timeout;
		doReadSectorsDMA: sectorCount