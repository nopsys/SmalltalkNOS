registers
disableInterrupts
	^ self atDeviceControRegPut: 2r00000010