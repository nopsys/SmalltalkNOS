private
clusterAt: index
	| start bytes |
	start := self positionOfCluster: index.

	bytes := clusterContents segmentFrom: start size: self bytesPerCluster.
	^ FAT32Cluster contents: bytes