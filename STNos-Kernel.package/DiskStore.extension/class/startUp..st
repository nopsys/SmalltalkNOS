*STNos-Kernel-PharoCompatibility
startUp: resuming
	Computer isSqueakNOS ifTrue: [^self].
	self checkVMVersion.
	resuming 
		ifTrue: [ self reset ]