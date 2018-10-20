accessing
length
	^ self type > 1 ifTrue: [self at: 2] ifFalse: [1]