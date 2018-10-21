initialize-release
initializeBridge: aComputer
	| info |
	info := VMBridge fromHandle: (ExternalAddress new fromInteger: aComputer primVMBiosInformationPosition)
	