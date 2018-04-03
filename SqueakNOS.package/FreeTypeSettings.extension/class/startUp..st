*SqueakNOS-PharoCompatibility
startUp: resuming
	Computer isSqueakNOS ifTrue: [^self].
	resuming ifTrue:[ self updateFreeType ]