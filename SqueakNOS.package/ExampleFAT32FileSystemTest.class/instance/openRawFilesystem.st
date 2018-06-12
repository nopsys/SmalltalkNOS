helpers
openRawFilesystem
	| stream bytes |
	stream := StandardFileStream fileNamed: './testdata/FAT32Partition.raw'.
	stream binary.
	bytes := ByteArrayOnStream on: stream.
	^ (FAT32FileSystem on: bytes) open