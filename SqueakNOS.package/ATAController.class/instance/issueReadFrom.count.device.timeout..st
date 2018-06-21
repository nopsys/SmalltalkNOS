services
issueReadFrom: firstSector count: sectorsCount device: deviceNumber timeout: timeout
	| size |
	self waitUntilNotBusyOr: timeout;
		 sectorCount: sectorsCount;
		 selectSector: firstSector ofDrive: deviceNumber;
		 waitUntilReadyOr: timeout;
		 cmdReadSectorsDMAWithRetry.
	size := sectorsCount * self sectorSize.
	"FIXME: split into n read commands here, because we need to do 1 per 64k block."
	busMaster issueReadOf: size into: buffer asInteger; startTransfer.
	semaphore wait.
	^ByteArraySegment on: buffer from: 1 to: size.
