decorator
initDeviceOn: aComputer
	| device |
	[ device := ATAController primary master.
	device information ]
		on: Error
		do: [ device := ATAController primary slave.
			device reset ].
	aComputer instVarNamed: #primaryFilesystem put: (FAT32FileSystem on: device primaryPartition) open