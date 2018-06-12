filesystem
primaryFilesystem
	| mbr record segment bytes |
	mbr := self masterBootRecord.
	1 to: 4 do: [ :i | 
		record := mbr partitionRecord: i.
		segment := record partitionSegmentOn: self.
		bytes := ByteArrayOnBlockDevice on: segment.
		"FIXME: check if it is a fat32 partition"
		^ (FAT32FileSystem on: bytes) open ]