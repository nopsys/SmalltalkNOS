services
issueWrite: aByteArray at: firstSector device: deviceNumber timeout: aTimeout
	"Transcript show: 'going to write ', aByteArray size printString, ' bytes: ', aByteArray asString printString, ' at: ', firstSector printString, '
	'."
	self waitUntilNotBusyOr: aTimeout;
		selectSector: firstSector ofDrive: deviceNumber;
		regSectorCount: aByteArray size // 512;
		waitUntilReadyOr: aTimeout;
		cmdWriteSectorsWithRetry;
		writeAllAvailable: aByteArray.

	
