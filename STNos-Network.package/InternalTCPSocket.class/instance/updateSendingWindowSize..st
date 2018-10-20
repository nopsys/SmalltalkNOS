protocol
updateSendingWindowSize: aPacket
	sendingWindowSize := aPacket windowSize.
	sender updatedSendingWindowSize