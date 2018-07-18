as yet unclassified
updatedSendingWindowSize
	socket usableWindow size > 0 ifTrue: [self moveTo: TCPTransmit new]