filesystem
diskFS
	| device |
	[ device := ATAController primary master.
	device information ]
		on: Error
		do: [ device := ATAController primary slave.
			device reset ].
	^ device primaryPartition copyToMemory filesystem