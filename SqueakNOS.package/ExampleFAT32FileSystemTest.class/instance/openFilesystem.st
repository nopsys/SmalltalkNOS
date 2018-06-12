helpers
openFilesystem
	| stream  device |
	stream := StandardFileStream fileNamed: './testdata/ExampleFAT32.raw'.
	device := BlockDeviceOnStream on: stream blockSize: 512.
	^ device primaryFilesystem