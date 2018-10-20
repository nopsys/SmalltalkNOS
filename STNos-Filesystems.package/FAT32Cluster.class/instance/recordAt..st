services
recordAt: index
	| size start bytes |
	size := self recordSize.
	start := (index - 1) * size.
	bytes := contents segmentFrom: start + 1  size: size.
	^ FAT32ClusterRecord contents: bytes