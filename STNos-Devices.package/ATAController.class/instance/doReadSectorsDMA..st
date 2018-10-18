services
doReadSectorsDMA: sectorCount
	| size offset |
	size := sectorCount * self sectorSize.
	self cmdReadSectorsDMAWithRetry.
	offset := busMaster offset.
	busMaster
		setupTransferOf: size with: buffer;
		issueRead.
	self waitUntilTransferIsReady.
	busMaster
		stopTransfer;
		resetDescriptorTable.
	self reenableIRQsAndCheckForErrors.
	^buffer