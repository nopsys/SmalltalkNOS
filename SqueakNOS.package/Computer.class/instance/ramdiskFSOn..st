filesystem
ramdiskFSOn: aByteArray
	| device |
	[ device := ATAController primary master.
	device information ]
		on: Error
		do: [ device := ATAController primary slave.
			device reset ].
	^ (FAT32FileSystem on: aByteArray) open