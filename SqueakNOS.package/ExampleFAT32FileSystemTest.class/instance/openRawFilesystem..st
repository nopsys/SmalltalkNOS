helpers
openRawFilesystem: fileName
	| stream bytes |
	stream := StandardFileStream fileNamed: fileName.
	stream binary.
	bytes := ByteArrayOnStream on: stream.
	^ (FAT32FileSystem on: bytes) open