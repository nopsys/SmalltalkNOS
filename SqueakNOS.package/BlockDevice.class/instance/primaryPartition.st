filesystem
primaryPartition
	| mbr record segment |
	mbr := self masterBootRecord.
		record := mbr partitionRecord: 1.
		segment := record partitionSegmentOn: self.
	^ByteArrayOnBlockDevice on: segment.
