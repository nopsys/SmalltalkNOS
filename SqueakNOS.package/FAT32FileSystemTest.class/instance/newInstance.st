helpers
newInstance
	^Computer isSqueakNOS
		ifTrue: [ ATAController primary master primaryFilesystem ]
		ifFalse: [ self memoryFilesystem ]