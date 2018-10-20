as yet unclassified
updatedSendingWindowSize
	socket sendingWindowSize = 0 ifTrue: [self moveTo: TCPPersist new]