*SqueakNOS-PharoCompatibility
startUp: resuming 
	resuming ifTrue: [ 
		HasNewFinalization := Computer isSqueakNOS 
			ifTrue: [ false ]
			ifFalse: [Smalltalk vm isPharoVM ] ]