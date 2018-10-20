accessing
format
	| sectors boot |
	sectors := contents size / 512.
	boot := FAT32BootRecord bytes: (contents segmentFrom: 1 to: 512).
	boot initializeWithDefaultValues; numberOfSectorsInPartition: sectors.
	self open.
	fat resetAllEntries