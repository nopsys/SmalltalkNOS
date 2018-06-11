converting
asSegmentOf: aBlockDevice
	| start size |
	start := self offsetFromMBR * aBlockDevice blockSize.
	size := self numberOfSectors * aBlockDevice blockSize.
	^ aBlockDevice segmentFrom: start size: size