converting
copyToMemory
	| sectors |
	sectors := 256 * 1024. "should use 'device size' after checking ATADevices answer correctly to 'size'"
	
	^ contents from: 1 to: sectors