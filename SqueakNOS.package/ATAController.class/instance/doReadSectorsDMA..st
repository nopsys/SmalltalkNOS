services
doReadSectorsDMA: sectorCount
	| size |
	size := sectorCount * self sectorSize.
	self cmdReadSectorsDMAWithRetry.
	busMaster
		setupTransferOf: size with: buffer;
		issueRead.
	transferReady halt wait.
	^ ByteArraySegment on: buffer from: 1 to: size