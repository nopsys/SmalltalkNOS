decorator
initialize: aComputer
	super initialize: aComputer.
	self isInRamdisk 
		ifTrue:  [self initRamdiskOn: aComputer] 
		ifFalse: [self initDeviceOn: aComputer].
	self openSourceFilesFrom: (aComputer instVarNamed: #primaryFilesystem) 