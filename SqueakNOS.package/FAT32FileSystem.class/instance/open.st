instance creation
open
	| fatContents fatEnd clusterStart |
	self bootRecord verifySignature.
	fatEnd := self fatOffset + (self clustersCount * 4).
	fatContents := contents segmentFrom: self fatOffset + 1 to: fatEnd - 1.
	fat := FAT32FileAllocationTable contents: fatContents.
	clusterStart := self clustersBeginOffset - (self bytesPerCluster * 2) + 1.
	clusterContents := contents segmentFrom: clusterStart to: contents size - 1