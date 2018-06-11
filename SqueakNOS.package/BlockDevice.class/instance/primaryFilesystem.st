filesystem
primaryFilesystem
	| mbr partition segment |
	mbr := self masterBootRecord.
	1 to: 4 do: [ :i | 
		partition := mbr partitionRecord: i.
		segment := partition asSegmentOf: self.
		"FIXME: check if it is a fat32 partition"
		^ (FAT32FileSystem on: segment) open ]