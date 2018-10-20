*STNos-Kernel-PharoCompatibility
shouldCallPreviousPersistence
	Computer isSqueakNOS ifTrue: [ ^false ].
	^ self preferences exists not and: [ self hasPreviousPersistence ]