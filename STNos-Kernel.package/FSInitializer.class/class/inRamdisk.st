creation
inRamdisk
	| initializer |
	initializer := self new.
	initializer inRamdisk.
	^ initializer