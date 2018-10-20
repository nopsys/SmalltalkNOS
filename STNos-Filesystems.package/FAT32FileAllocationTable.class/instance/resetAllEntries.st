accessing
resetAllEntries
	| size |
	size := self recordSize.
	self
		at: 1 put: 16r0FFFFFF8;
		at: 2 put: 16r0FFFFFFF