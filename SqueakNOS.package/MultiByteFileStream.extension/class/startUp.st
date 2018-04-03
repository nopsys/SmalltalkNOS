*SqueakNOS-PharoCompatibility
startUp
	Computer isSqueakNOS ifTrue: [^self].
	self guessDefaultLineEndConvention.
