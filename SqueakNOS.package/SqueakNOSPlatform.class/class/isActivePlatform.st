testing
isActivePlatform
	"while slower, this is the safest way to check if SqueakNOS is running,
	because we ask the VM. 
	Computer isSqueakNOS, on the other hand, is a (faster) proxy to this value
	but depends on the platform to be already initialized. This happens at
	OsPlatform startUp:, so if you need to check if this is SqueakNOS before
	that use SqueakNOSPlatform isActivePlatform instead.
	To see the startup list inspect: SessionManager default startupList"
	^self currentPlatformName = 'SqueakNOS'