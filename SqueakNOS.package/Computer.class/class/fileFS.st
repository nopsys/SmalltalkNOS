filesystem
fileFS
	| diskStream |
	diskStream := StandardFileStream fileNamed: './testdata/ExampleFAT32.raw'.
	^(FAT32FileSystem on: (ByteArrayOnStream on: diskStream)) open