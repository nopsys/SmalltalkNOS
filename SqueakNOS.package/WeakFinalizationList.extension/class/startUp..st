*SqueakNOS-PharoCompatibility
startUp: resuming 
	resuming ifTrue: [ 
		HasNewFinalization := Computer isSqueakNOS 
			ifTrue: [ true ]
			ifFalse: [Smalltalk vm isPharoVM ] ]