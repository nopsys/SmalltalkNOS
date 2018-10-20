converting
partitionSegmentOn: aBlockDevice

	^ aBlockDevice segmentFrom: self offsetFromMBR +1 size: self numberOfSectors