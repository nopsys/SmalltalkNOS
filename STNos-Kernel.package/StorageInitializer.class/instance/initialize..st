decorator
initialize: aComputer
	| ramdisk |
	super initialize: aComputer.
	ATAController primary installOn: aComputer