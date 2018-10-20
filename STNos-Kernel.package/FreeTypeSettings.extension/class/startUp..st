*STNos-Kernel-PharoCompatibility
startUp: resuming
	Computer isSqueakNOS ifTrue: [^self].
	resuming ifTrue:[ self updateFreeType ]