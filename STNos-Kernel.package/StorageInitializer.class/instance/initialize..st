decorator
initialize: aComputer
	| ramdisk |
	super initialize: aComputer.
	ATAController primary installOn: self.
	ramdisk := ByteArray new: 128 * 1024 * 1024.
	ATAController primary
		at: 1
		count: ramdisk size / 512
		of: 0
		into: ramdisk.
	aComputer instVarNamed: #primaryFilesystem put: self ramdiskFS.
	aComputer openSourceFilesFrom: aComputer primaryFilesystem.