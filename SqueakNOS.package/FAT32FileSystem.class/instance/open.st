instance creation
open
	| fatContents fatEnd |
	fatEnd := self fatStart + (self clustersCount * 4).
	fatContents := contents segmentFrom: self fatStart to: fatEnd - 1.
	fat := FAT32FileAllocationTable contents: fatContents.
	clusterContents := contents segmentFrom: fatEnd to: contents size -1