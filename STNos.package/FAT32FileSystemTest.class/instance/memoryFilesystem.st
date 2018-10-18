helpers
memoryFilesystem
	| memory |
	memory := ByteArray new: 40 * 1024 * 1024.
	^(FAT32FileSystem on: memory) format