helpers
openDiskFilesystem: fileName
	| stream device |
	stream := StandardFileStream fileNamed: fileName.
	device := BlockDeviceOnStream on: stream blockSize: 512.
	^ device primaryFilesystem