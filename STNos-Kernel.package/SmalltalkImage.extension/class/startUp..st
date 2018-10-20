*STNos-Kernel-PharoCompatibility
startUp: isImageStarting
	ChangesLog default.
	isImageStarting ifTrue: [
		Computer isSqueakNOS ifFalse: [
			Smalltalk openSourceFiles]]