services
recordAt: index
	| size strm newIndex |
	size := self recordSize.
	newIndex := index - 1 * size.
	strm := StreamOnStream on: contents from: newIndex to: newIndex + size.
	^FAT32ClusterRecord contents: strm.