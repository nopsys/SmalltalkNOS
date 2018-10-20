as yet unclassified
partitionRecord: index
	"Gets the partition record number index. There are 4 of them, each occupies 16 bytes and
	 are placed in a table. index can be 1, 2, 3 or 4"

	| start |
	start := 447 + (16 * (index - 1)).
	^ PartitionRecord with: (bytes segmentFrom: start to: start + 15)