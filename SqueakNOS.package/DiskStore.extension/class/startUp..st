*SqueakNOS-PharoCompatibility
startUp: resuming
	Computer isSqueakNOS ifTrue: [^self reset; useFilePlugin].
	self checkVMVersion.
	resuming 
		ifTrue: [ self reset ]